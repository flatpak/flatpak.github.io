ARG RUBY_VERSION
FROM ruby:${RUBY_VERSION} AS build

WORKDIR /builddir
COPY . .
RUN bundle install --deployment
RUN bundle exec middleman build

FROM nginxinc/nginx-unprivileged
COPY --from=build /builddir/build /srv/http/
ADD nginx.conf /etc/nginx/conf.d/default.conf
