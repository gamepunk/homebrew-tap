# Homebrew Tap

![Brew](https://img.shields.io/badge/Homebrew-tap-blue)
![Cask](https://img.shields.io/badge/cask-magic--mirror%200.0.6-blue)
![Cask](https://img.shields.io/badge/cask-flip%200.29.11-blue)

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
| `flip` | [Flip](https://gamepunk.github.io/Flip/) | 菜单栏效率工具：集中管理系统开关、专注模式和自定义脚本 |

### Flip

安装：

```bash
brew install gamepunk/tap/flip
```

卸载：

```bash
brew uninstall gamepunk/tap/flip
```

#### 系统要求

| 项 | 要求 |
|---|---|
| macOS | 12.0+（Monterey） |

#### 注意事项

- **完全免费**：无试用期限、无需激活码。
- 部分功能（低电量、合盖不休眠、高能耗）会安装 **System Helper** 并在首次安装时请求一次管理员授权。
- 卸载 App 前，建议先在 Flip 设置里卸载 System Helper，避免残留后台 helper。
- 当前构建使用 Apple Development 证书签名、未公证，首次打开如遇 Gatekeeper 提示，右键「打开」放行一次即可。

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
brew upgrade --greedy gamepunk/tap/flip
```

## 为仓库添加新软件

1. 在 `Casks/`（App）或 `Formula/`（命令行工具）中添加对应文件
2. 推送本仓库即可，`brew tap gamepunk/tap` 过的用户执行 `brew update` 后即可安装

## 更新日志

### 0.29.16

- 移除重复的 AppIcon.png，仅保留 Assets 图标目录
- 清理旧调试菜单和未使用 API

### 0.29.15

- 鼠标 hover 与键盘选择合并为唯一选中行
- 统一中性灰高亮，避免蓝灰双背景

### 0.29.14

- 修复多个 Carbon 热键处理器互相吞事件，全局快捷键恢复
- 空格键现在和回车一样执行当前选中项

### 0.29.13

- 补全英文界面「打开菜单」文案
- 增加快捷键注册、回调与设置页测试

### 0.29.12

- Flip 更新至 0.29.12：新增扬声器静音、蓝牙、网络、隔空投送控制
- 面板支持方向键选择、回车执行，并新增「打开菜单」全局快捷键
- 选项命令只允许使用预设选项，禁止脚本动态生成
- 修复开关点击后的蓝色焦点环

### 0.29.11

- 添加 Flip cask（macOS 12+），支持 `brew install gamepunk/tap/flip`
- Flip cask 声明 `auto_updates`，与 App 内 Sparkle 更新配合；`brew upgrade` 默认跳过，使用 `--greedy` 可由 Homebrew 拉取

### 0.0.6

- Magic Mirror cask 更新至 0.0.6（菜单栏面板重做：去掉气泡、精确居中于图标）
- 更新说明补充：cask 声明了 `auto_updates`，`brew upgrade` 默认跳过，需 `--greedy` 才会由 Homebrew 拉取

### 0.0.5

- Magic Mirror cask 更新至 0.0.5（完全免费）

### 0.0.1

- 添加 Magic Mirror cask（macOS 26+），支持 `brew install gamepunk/tap/magic-mirror`
- README 重写：通用软件集合 tap 说明 + 安装 / 卸载 / 更新指南
