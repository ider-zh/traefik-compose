# Traefik v3 Compose

[English](#english) | [日本語](#日本語) | [中文](#中文)

---

<a name="english"></a>
## English
This repository provides a production-ready reverse proxy solution using Traefik v3, featuring automatic discovery and HTTPS via Cloudflare DNS-01 challenge.

### Quick Start
1. **Initialize**: `make init`
2. **Setup Token**: Edit `.env` to set `CLOUDFLARE_DNS_API_TOKEN`.
3. **Start Traefik**: `make up`

### Advanced Examples
Located in the `apps/` directory:
- `multi-backend`: Load balancing demo.
- `tcp-service`: TCP proxy demo.
- `traefik-home`: Visual dashboard.
- `external-proxy`: Proxy for local/external services.
- `middleware-demo`: Basic Auth, Rate Limiting, Path Strip.

---

<a name="日本語"></a>
## 日本語
Traefik v3 を使用した、本番環境向けの構成テンプレートです。Cloudflare DNS-01 チャレンジによる自動 HTTPS 証明書発行と、コンテナの自動検出に対応しています。

### クイックスタート
1. **初期化**: `make init`
2. **トークン設定**: `.env` ファイルを編集し、`CLOUDFLARE_DNS_API_TOKEN` を設定します。
3. **Traefik 起動**: `make up`

### 応用例 (`apps/` ディレクトリ)
- `multi-backend`: 負荷分散のデモ。
- `tcp-service`: TCP プロキシのデモ。
- `traefik-home`: 可視化ダッシュボード。
- `external-proxy`: ローカルサービスや外部サービスのプロキシ設定。
- `middleware-demo`: 基本認証、レート制限、パス削除。

---

<a name="中文"></a>
## 中文
本仓库提供了一个基于 Traefik v3 的反向代理方案，集成了 Cloudflare DNS-01 验证以实现 HTTPS 自动配置与容器自动发现。

### 快速开始
1. **初始化环境**: `make init`
2. **配置 API Token**: 修改 `.env` 文件，填入 `CLOUDFLARE_DNS_API_TOKEN`。
3. **启动**: `make up`

### 进阶示例 (`apps/` 目录)
- `multi-backend`: 负载均衡演示。
- `tcp-service`: TCP 代理演示。
- `traefik-home`: 可视化仪表板。
- `external-proxy`: 代理本地主机或外部服务。
- `middleware-demo`: 身份验证、限流、路径剥离演示。
