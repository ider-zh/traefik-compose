# Traefik v3 Compose

本仓库提供了一个基于 Traefik v3 的反向代理方案，集成了 Cloudflare DNS-01 验证以实现 HTTPS 自动配置与容器自动发现。

## 快速开始

1. **初始化环境**:
   ```bash
   make init
   ```
2. **配置 API Token**:
   修改生成的 `.env` 文件，填入您的 `CLOUDFLARE_DNS_API_TOKEN`。
3. **启动**:
   ```bash
   make up
   ```

## 进阶示例

本仓库支持以下进阶用法，位于 `apps/` 目录中：

- **负载均衡 (`apps/multi-backend`)**: 演示如何通过多个后端副本实现流量分配。
- **TCP 代理 (`apps/tcp-service`)**: 演示如何通过 Traefik 代理 TCP 流量。
- **Traefik Home (`apps/traefik-home`)**: 一个简洁的仪表板，用于查看您的 Traefik 路由。
- **外部代理 (`apps/external-proxy`)**: 演示如何代理宿主机本地服务及转发外部域名。
- **中间件演示 (`apps/middleware-demo`)**: 演示 Basic Auth、限流和路径剥离功能。

### 运行示例
所有服务将自动使用 `BASE_DOMAIN` 环境变量作为基础域名（例如：`demo.${BASE_DOMAIN}`）。

- 启动所有演示: `make demo-all-up`
- 启动特定示例 (如负载均衡): `make multi-up`
- 运行自动化测试: `make test`

