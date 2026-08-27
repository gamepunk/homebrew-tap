cask "magic-mirror" do
  version "0.1.0"
  sha256 "763fccfa642ccdc36941d484b2f1e09565de61e3b5ff384f3659c39a1b82b2a3"

  url "https://gamepunk.github.io/magic-mirror/downloads/MagicMirror-#{version}.dmg"
  name "Magic Mirror"
  desc "把任意应用窗口或屏幕区域实时镜像到悬浮窗"
  homepage "https://gamepunk.github.io/magic-mirror/"

  depends_on macos: :tahoe

  app "Magic Mirror.app"

  zap trash: [
    "~/Library/Application Support/com.magicmirror.app",
    "~/Library/Caches/com.magicmirror.app",
    "~/Library/Preferences/com.magicmirror.app.plist",
  ]
end
