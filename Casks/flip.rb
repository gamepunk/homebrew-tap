cask "flip" do
  version "0.29.11,20261113.86"
  sha256 "07f6fd2b54f882ec1815667b4eba657021c66fc5ae67c5308752a105565e32ba"

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
