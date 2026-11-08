# FX_R1_server 组件说明

这个仓库把斐讯 R1 的客户端、媒体服务、Wi-Fi 配网工具和洛雪服务整理成可部署的工程。

## 组件用途

| 组件 | 目录 | 用途 | 运行位置 |
|---|---|---|---|
| R1 小智客户端源码 | `clients/Phicomm_R1_XiaoZhi_Client/source` | R1 设备端客户端、播放器、网页控制台和构建脚本 | R1 音箱 / 构建机 |
| R1 V2.0.5 发布包 | `clients/Phicomm_R1_XiaoZhi_Client/release` | APK、ADB 安装器、发布文档和媒体服务源码 | Windows 安装机 |
| R1XiaoZhi_MediaServer | `services/r1-media-server` | 合并本地音乐、在线音乐、网络电台和有声书，向 R1 提供 `8100` | Docker |
| R1ConfigWifi | `tools/R1ConfigWifi` | 连接 R1 热点后填写 SSID/密码并提交 Wi-Fi 配置 | 浏览器 |
| lxserver 上游源码快照 | `third_party/lxserver` | 洛雪同步服务源码参考；生产 Compose 使用官方镜像 | Docker / 上游项目 |

## 运行链路

```text
R1 小智客户端
  └─ GET http://<NAS>:8100/index.json
       └─ R1XiaoZhi_MediaServer
            ├─ 本地音乐目录 /music
            ├─ 本地有声书目录 /audiobook
            ├─ 网络电台 files/radios.json
            └─ lxserver:9527 搜索与取链
```

## 端口

- `8100`：R1XiaoZhi_MediaServer
- `9527`：lxserver
- R1 控制台：音箱自身 `8080`

## 数据与密码

- `files/`：曲库缓存、在线池、电台、开关和音质配置。
- `lxdata/`、`lxcache/`：lxserver 持久化数据和缓存。
- `music/`、`audiobook/`：用户自己的媒体文件，不提交到 Git。
- lxserver 的管理员密码和 Web 播放器密码通过 `.env` 注入，不写入仓库。

## 安全边界

- R1ConfigWifi 会通过 R1 热点 HTTP 提交用户输入的 Wi-Fi 密码，只应在设备自己的热点网络中使用。
- `8100`、`9527` 应只暴露在局域网；不要直接映射到公网。
- `third_party/lxserver` 不包含运行时 `config.js`、data、cache、logs 和 node_modules；生产部署使用上游官方镜像。
