# Traefik v3 Compose

[English](README.md) | [中文](README.zh.md) | [日本語](README.ja.md)

このリポジトリは、Traefik v3 をベースにしたリバースプロキシ構成を提供します。Cloudflare DNS-01 認証を統合し、HTTPS の自動設定とコンテナの自動検出を実現します。

## クイックスタート

1. **環境の初期化**:
   ```bash
   make init
   ```
2. **API トークンの設定**:
   生成された `.env` ファイルを編集し、`CLOUDFLARE_DNS_API_TOKEN` と `BASE_DOMAIN` を設定します。
3. **起動**:
   ```bash
   make up
   ```

## 高度な使用例

以下の高度な使用例が `apps/` ディレクトリに含まれています：

- **負荷分散 (`apps/multi-backend`)**: 複数のバックエンドレプリカ間でトラフィックを分散する方法。
- **TCP プロキシ (`apps/tcp-service`)**: Traefik を介して TCP トラフィックをプロキシする方法。
- **Traefik Home (`apps/traefik-home`)**: Traefik によって検出されたすべてのコンテナサービスとそのルートをリアルタイムで確認できる、シンプルで直感的なダッシュボード。
- **外部プロキシ (`apps/external-proxy`)**: ホストのローカルサービスや外部ドメインへの転送設定。
- **ミドルウェアデモ (`apps/middleware-demo`)**: Basic Auth、レート制限、パス削除機能。

### サンプル実行
すべてのサービスは、`BASE_DOMAIN` 環境変数をベースドメインとして自動的に使用します（例：`demo.${BASE_DOMAIN}`）。

- すべてのデモを起動: `make demo-all-up`
- 特定のデモを起動 (例: 負荷分散): `make multi-up`
- 自動テストを実行: `make test`
