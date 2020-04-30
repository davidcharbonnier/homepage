FROM klakegg/hugo:ext-alpine-onbuild AS hugo

FROM caddy:alpine
COPY Caddyfile /etc/caddy/
COPY --from=hugo /target /usr/share/caddy/
