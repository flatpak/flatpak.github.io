FROM docker-registry.default.svc:5000/flatpak-web/middleman

RUN git clone https://github.com/flatpak/flatpak.github.io && \
    cd flatpak.github.io && bundle install && middleman build

FROM nginxinc/nginx-unprivileged:stable-alpine
COPY --from=0 /flatpak.github.io/build /var/www/flatpak
ADD nginx.conf /etc/nginx/conf.d/default.conf
