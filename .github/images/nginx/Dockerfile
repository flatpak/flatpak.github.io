FROM fedora:30 as builder

EXPOSE 8080

RUN dnf install -y \
        ruby rubygems rubygem-bundler rubygem-json \
        git gcc gcc-c++ make redhat-rpm-config patch \
        ruby-devel libffi-devel zlib-devel

RUN git clone https://github.com/flatpak/flatpak.github.io /app && \
    pushd /app && bundle install --system && bundle install

RUN cd /app && middleman build

FROM nginxinc/nginx-unprivileged:stable-alpine
COPY --from=builder /app/build /var/www/app
ADD nginx.conf /etc/nginx/conf.d/default.conf
