# FX_R1_server

斐讯 R1 小智客户端与媒体服务部署集合。

## 目录

- `services/r1-media-server/`：R1XiaoZhi_MediaServer v1.2.3 源码和 Dockerfile。
- `deploy/ikuai/`：适配爱快 Docker 的 Compose，**只使用 `image:`，不使用 `build:`**。
- `tools/R1ConfigWifi/`：R1 热点 Wi-Fi 配置网页工具。
- `clients/Phicomm_R1_XiaoZhi_Client/source/`：小智客户端源码、smali 基线和构建脚本。
- `clients/Phicomm_R1_XiaoZhi_Client/release/`：V2.0.5 安装包和发布资料。
- `third_party/lxserver/`：洛雪服务源码快照；生产部署使用 `xcq0607/lxserver:latest`。
- `docs/COMPONENTS.md`：各组件用途、端口、数据和安全说明。

## 爱快部署

1. 进入 `deploy/ikuai/`，复制 `.env.example` 为 `.env` 并设置强密码。
2. 在爱快 Docker 项目目录创建 `files`、`music`、`audiobook`、`lxdata`、`lxcache`、`lxmusic`。
3. 导入 `deploy/ikuai/docker-compose.yml` 并启动。
4. 访问 `http://<爱快IP>:9527/admin` 配置 lxserver 音源。
5. 访问 `http://<爱快IP>:8100`，设置落雪地址 `http://lxserver:9527`。
6. R1 控制台音乐源只保留 `http://<爱快IP>:8100/index.json`。

爱快不允许 Compose 中出现 `build:`。R1 MediaServer 镜像由 GitHub Actions 构建到 GHCR，工作流见 `.github/workflows/publish-r1-media.yml`。首次运行后，请把 GHCR 包设为 Public；如果保持私有，需要在爱快 Docker 中配置 GHCR 登录。

## 构建镜像

推送 `main` 后，GitHub Actions 会构建：

```text
ghcr.io/suxinwl/fx-r1-media-server:1.2.3
ghcr.io/suxinwl/fx-r1-media-server:latest
```

本地开发可使用 `services/r1-media-server/docker-compose.build.yml`，但这个文件不用于爱快导入。
