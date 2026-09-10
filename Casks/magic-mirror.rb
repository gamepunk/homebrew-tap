cask "magic-mirror" do
  version "0.0.5"
  sha256 "5920ff6ef2da1ae8d8fee4f6cb2ffee8a8a311439d7e3f9c1ffb8c79aacea9d2"

  url "https://gamepunk.github.io/magic-mirror/downloads/MagicMirror-#{version}.dmg"
  name "Magic Mirror"
  desc "把任意应用窗口或屏幕区域实时镜像到悬浮窗"
  homepage "https://gamepunk.github.io/magic-mirror/"

  # app 自带 Sparkle 自动更新（同一短版本号内随构建号推进）：
  # 声明后 brew outdated/upgrade 默认跳过本 cask，避免与自动更新
  # 重复提示（详见 Homebrew 的 --greedy-auto-updates 说明）。
  auto_updates true
  depends_on macos: :tahoe

  app "Magic Mirror.app"

  zap trash: [
    "~/Library/Application Support/com.magicmirror.app",
    "~/Library/Caches/com.magicmirror.app",
    "~/Library/Preferences/com.magicmirror.app.plist",
  ]
end
