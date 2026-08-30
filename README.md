# Homebrew Tap

![Brew](https://img.shields.io/badge/Homebrew-tap-blue)
![Cask](https://img.shields.io/badge/cask-magic--mirror%200.0.1-blue)

> 我的 macOS 软件集合的 Homebrew tap 仓库。通过 Homebrew 安装我发布的 Mac 应用，以后新软件也会陆续加入本仓库。

## 使用

添加本 tap（一次性）：

```bash
brew tap gamepunk/tap
```

然后即可安装其中任意软件（见下表）。

## 包含的软件

| Cask | 软件 | 说明 |
|---|---|---|
| `magic-mirror` | [Magic Mirror](https://gamepunk.github.io/magic-mirror/) | 菜单栏实时画面镜像工具：把任意应用窗口或屏幕区域逐帧镜像到置顶悬浮窗 |

### Magic Mirror

安装：

```bash
brew install gamepunk/tap/magic-mirror
```

卸载：

```bash
brew uninstall gamepunk/tap/magic-mirror
```

#### 系统要求

| 项 | 要求 |
|---|---|
| macOS | 26.0+（Tahoe） |
| 屏幕录制权限 | 首次使用需在「系统设置 → 隐私与安全性 → 屏幕录制」中授权并重启应用 |

#### 注意事项

- 商业软件，支持 7 天免费试用；购买与激活方式见[官网](https://gamepunk.github.io/magic-mirror/)。
- 当前构建使用 Apple Development 证书签名、未公证，首次打开如遇 Gatekeeper 提示，右键「打开」放行一次即可。

## 更新软件

```bash
brew update
brew upgrade gamepunk/tap/<软件名>   # 例如 gamepunk/tap/magic-mirror
```

## 为仓库添加新软件

1. 在 `Casks/`（App）或 `Formula/`（命令行工具）中添加对应文件
2. 推送本仓库即可，`brew tap gamepunk/tap` 过的用户执行 `brew update` 后即可安装
