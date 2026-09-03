cask "magic-mirror" do
  version "0.0.4"
  sha256 "959adcb75835d653b67089fa2a8ab87e8cc54cbaeeb7863853bb891a40c887dd"

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
