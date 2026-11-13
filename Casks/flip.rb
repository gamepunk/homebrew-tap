cask "flip" do
  version "0.29.20,20261113.95"
  sha256 "d8905235629dfdfe5482598c3dada4833347a5b9fd906cb12414260dc034a0cb"

  url "https://gamepunk.github.io/Flip/Flip-#{version.csv.first}.dmg"
  name "Flip"
  desc "菜单栏效率工具，集中控制系统开关与自定义脚本"
  homepage "https://gamepunk.github.io/Flip/"

  livecheck do
    url "https://gamepunk.github.io/Flip/appcast.xml"
    strategy :sparkle
  end

  # App 自带 Sparkle 自动更新；声明后 brew upgrade 默认跳过，
  # 避免与 App 内更新重复提示。使用 --greedy 可强制由 Homebrew 更新。
  auto_updates true
  depends_on macos: :monterey

  app "Flip.app"

  zap trash: [
    "~/.config/flip",
    "~/Library/Application Support/org.inksky.Flip",
    "~/Library/Caches/org.inksky.Flip",
    "~/Library/Preferences/org.inksky.Flip.plist",
    "~/Library/Saved Application State/org.inksky.Flip.savedState",
  ]

  caveats <<~EOS
    Flip uses Sparkle for automatic updates, so `brew upgrade` skips this cask by default.
    Uninstall System Helper from Flip settings before removing the app.
  EOS
end
