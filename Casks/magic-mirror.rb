cask "magic-mirror" do
  version "0.0.2"
  sha256 "5401eaec1e2f18dc0aee43ea61673416c09183d0f0fd02614cd2597eeb4d5a36"

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
