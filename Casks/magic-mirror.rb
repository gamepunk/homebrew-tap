cask "magic-mirror" do
  version "0.1.0"
  sha256 "45876d11ddc69f956fa2f3baad692a676bc94ceb76cd9de6e0ea31adacb810e1"

  url "https://gamepunk.github.io/magic-mirror/downloads/MagicMirror-#{version}.dmg"
  name "Magic Mirror"
  desc "把任意应用窗口或屏幕区域实时镜像到悬浮窗"
  homepage "https://gamepunk.github.io/magic-mirror/"

  depends_on macos: ">= :tahoe"

  app "Magic Mirror.app"

  zap trash: [
    "~/Library/Caches/com.magicmirror.app",
    "~/Library/Application Support/com.magicmirror.app",
    "~/Library/Preferences/com.magicmirror.app.plist",
  ]
end
