# Homebrew Tap

![Brew](https://img.shields.io/badge/Homebrew-tap-blue)
![Cask](https://img.shields.io/badge/cask-magic--mirror%200.0.6-blue)

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

- **完全免费**：无试用期限、无需激活码，下载即用全部功能。
- 当前构建使用 Apple Development 证书签名、未公证，首次打开如遇 Gatekeeper 提示，右键「打开」放行一次即可。

## 更新软件

App 自带 Sparkle 自动更新，会自行升到新版本，因此 cask 声明了 `auto_updates`。
这意味着 `brew upgrade` **默认会跳过它**（避免与自动更新重复提示）。

想用 Homebrew 来拉取新版本，加上 `--greedy`：

```bash
brew update
brew upgrade --greedy gamepunk/tap/magic-mirror
```

其它软件仍用常规写法：

```bash
brew upgrade gamepunk/tap/<软件名>
```

## 为仓库添加新软件

1. 在 `Casks/`（App）或 `Formula/`（命令行工具）中添加对应文件
2. 推送本仓库即可，`brew tap gamepunk/tap` 过的用户执行 `brew update` 后即可安装

## 更新日志

### 0.0.6

- Magic Mirror cask 更新至 0.0.6（菜单栏面板重做：去掉气泡、精确居中于图标）
- 更新说明补充：cask 声明了 `auto_updates`，`brew upgrade` 默认跳过，需 `--greedy` 才会由 Homebrew 拉取

### 0.0.5

- Magic Mirror cask 更新至 0.0.5（完全免费）

### 0.0.1

- 添加 Magic Mirror cask（macOS 26+），支持 `brew install gamepunk/tap/magic-mirror`
- README 重写：通用软件集合 tap 说明 + 安装 / 卸载 / 更新指南
