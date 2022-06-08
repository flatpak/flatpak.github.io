ARG RUBY_VERSION
FROM docker.io/library/ruby:$RUBY_VERSION AS build

WORKDIR /builddir
COPY . .
RUN bundle install --deployment
RUN bundle exec middleman build

FROM docker.io/nginxinc/nginx-unprivileged:stable
COPY --from=build /builddir/build /srv/http/
ADD nginx.conf /etc/nginx/conf.d/default.conf
