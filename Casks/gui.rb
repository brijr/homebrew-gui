cask "gui" do
  version "0.1.0-alpha.32"
  sha256 "02d6de2e847604d371bd26cc318b5057e751bc16f34d71f1b6971f299c9fa38b"

  url "https://usegui.com/releases/Gui-#{version}-arm64.dmg"
  name "Gui"
  desc "Design real interfaces with AI coding agents"
  homepage "https://usegui.com/"

  livecheck do
    url "https://usegui.com/releases/alpha-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Gui.app"

  zap trash: [
    "~/Library/Application Support/Gui",
    "~/Library/Caches/dev.gui.app",
    "~/Library/Caches/dev.gui.app.ShipIt",
    "~/Library/HTTPStorages/dev.gui.app",
    "~/Library/Logs/Gui",
    "~/Library/Preferences/dev.gui.app.plist",
    "~/Library/Saved Application State/dev.gui.app.savedState",
  ]
end
