FROM ghcr.io/getzola/zola:v0.19.2 AS build

WORKDIR /builddir
COPY . .
RUN ["zola", "build"]

FROM docker.io/nginxinc/nginx-unprivileged:stable
COPY --from=build /builddir/public /srv/http/
ADD nginx.conf /etc/nginx/conf.d/default.conf
