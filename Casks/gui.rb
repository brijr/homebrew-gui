cask "gui" do
  version "0.1.0-alpha.30"
  sha256 "a349e61c4ce20be883056f00bda0f7531f04add8fd1cdb578b04ee35a9f45982"

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
