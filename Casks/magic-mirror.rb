cask "magic-mirror" do
  version "0.0.3"
  sha256 "c82a917f8a5c1a8c71a55c2277db6a25923a2666bf24b73468620d9eac9dd513"

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
