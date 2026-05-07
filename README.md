re# Traefik v3 Compose

[English](README.md) | [中文](README.zh.md) | [日本語](README.ja.md)

This repository provides a reverse proxy solution based on Traefik v3, integrating Cloudflare DNS-01 validation for automatic HTTPS configuration and container auto-discovery.

## Quick Start

1. **Initialize Environment**:
   ```bash
   make init
   ```
2. **Configure API Token**:
   Modify the generated `.env` file and input your `CLOUDFLARE_DNS_API_TOKEN` and `BASE_DOMAIN`.
3. **Start**:
   ```bash
   make up
   ```

## Advanced Examples

This repository supports the following advanced usage, located in the `apps/` directory:

- **Load Balancing (`apps/multi-backend`)**: Demonstrates traffic distribution across multiple backend replicas.
- **TCP Proxy (`apps/tcp-service`)**: Demonstrates proxying TCP traffic via Traefik.
- **Traefik Home (`apps/traefik-home`)**: A clean, visual dashboard to view all Traefik-discovered container services and their routing rules in real-time.
- **External Proxy (`apps/external-proxy`)**: Demonstrates proxying host local services and forwarding external domains.
- **Middleware Demo (`apps/middleware-demo`)**: Demonstrates Basic Auth, rate limiting, and path stripping.

### Running Examples
All services will automatically use the `BASE_DOMAIN` environment variable as the base domain (e.g., `demo.${BASE_DOMAIN}`).

- Start all demos: `make demo-all-up`
- Start specific example (e.g., Load Balancing): `make multi-up`
- Run automated tests: `make test`
