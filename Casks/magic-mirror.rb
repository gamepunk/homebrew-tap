cask "magic-mirror" do
  version "0.0.1"
  sha256 "c3d1ed6c4a3124d16a7b54c8ee29efca80e32c0531001a0f2303c4513e780ea5"

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
