# caddy-cloudflare-container

A caddy docker container with the Cloudflare DNS challange package

## Use it

container reference `ghcr.io/steffaine/caddy-cloudflare-container:2.6.2`

Or with Docker compose

```yaml
version: "3.7"

services:
  caddy:
    image: ghcr.io/steffaine/caddy-cloudflare-container:2.6.2
    restart: unless-stopped
    cap_add:
      - NET_ADMIN
    ports:
      - "80:80"
      - "443:443"
      - "443:443/udp"
    volumes:
      - /etc/caddy/Caddyfile:/etc/caddy/Caddyfile
```
