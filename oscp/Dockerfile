FROM fedora:30

RUN dnf install -y \
        ruby rubygems rubygem-bundler rubygem-json \
        git gcc gcc-c++ make redhat-rpm-config patch \
        ruby-devel libffi-devel zlib-devel

RUN git clone https://github.com/flatpak/flatpak.github.io && \
    cd flatpak.github.io && bundle install && \
    middleman build

FROM nginxinc/nginx-unprivileged:stable-alpine
COPY --from=0 /flatpak.github.io/build /var/www/flatpak
ADD nginx.conf /etc/nginx/conf.d/default.conf
