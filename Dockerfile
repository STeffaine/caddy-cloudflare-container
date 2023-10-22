FROM caddy:2.6.2-builder AS caddy-builder
RUN xcaddy build \
  --with github.com/caddy-dns/cloudflare

FROM caddy:2.6.2
COPY --from=caddy-builder /usr/bin/caddy /usr/bin/caddy
