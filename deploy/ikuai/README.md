# iKuai 部署包

此目录的 Compose 文件专门适配 iKuai Docker：**没有 `build:`**，两个服务都使用 `image:`。

1. 把 `docker-compose.yml`、`.env.example` 复制到 iKuai Docker 项目目录。
2. 将 `.env.example` 改名为 `.env`，设置强密码。
3. 创建目录：`files`、`music`、`audiobook`、`lxdata`、`lxcache`、`lxmusic`。
4. 在 iKuai Docker 中导入 Compose 并启动。
5. 打开 `http://<爱快IP>:9527/admin`，完成 lxserver 音源配置。
6. 打开 `http://<爱快IP>:8100`，在“音源”页把落雪地址设置为 `http://lxserver:9527`。
7. R1 音乐源只保留 `http://<爱快IP>:8100/index.json`。

`ghcr.io/suxinwl/fx-r1-media-server:1.2.3` 必须是公开 GHCR 包；若设为私有，需要先在 iKuai Docker 中配置 GHCR 登录。
