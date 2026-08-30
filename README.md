# Homebrew Tap — Magic Mirror

> 通过 Homebrew 安装 [Magic Mirror](https://gamepunk.github.io/magic-mirror/)——macOS 菜单栏实时画面镜像工具：把任意应用窗口或屏幕区域逐帧镜像到置顶悬浮窗。

## 安装

```bash
brew tap gamepunk/tap
brew install gamepunk/tap/magic-mirror
```

## 卸载

```bash
brew uninstall gamepunk/tap/magic-mirror
```

卸载后如需清理残留数据（可选）：

```bash
rm -rf ~/Library/Application\ Support/com.magicmirror.app
rm -rf ~/Library/Caches/com.magicmirror.app
rm -f ~/Library/Preferences/com.magicmirror.app.plist
```

## 系统要求

| 项 | 要求 |
|---|---|
| macOS | 26.0+（Tahoe） |
| 屏幕录制权限 | 首次使用需在「系统设置 → 隐私与安全性 → 屏幕录制」中授权并重启应用 |

## 更新

```bash
brew update
brew upgrade gamepunk/tap/magic-mirror
```

## 注意事项

- 应用为商业软件，支持 7 天免费试用；购买与激活方式见[官网](https://gamepunk.github.io/magic-mirror/)。
- 当前构建使用 Apple Development 证书签名、未公证，首次打开如遇 Gatekeeper 提示，右键「打开」放行一次即可。
