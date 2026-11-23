cask "gui" do
  version "0.1.0-alpha.29"
  sha256 "423b5f455b90d6fa2d8e6a7997545309cef13da93245392536e9a4770fb3b4a4"

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
