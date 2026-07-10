cask "notchable" do
  version "0.1.0"
  sha256 "59dd305ceee286e2840494acb0b7e3facbb83d8029631efee092d029e8b03f61"

  url "https://notchable.io/download/Notchable-0.1.0.zip"
  name "Notchable"
  desc "Dynamic Island-style surface for the MacBook notch"
  homepage "https://notchable.io/"

  livecheck do
    url "https://notchable.io/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Notchable.app"

  zap trash: [
    "~/Library/Application Support/Notchable",
    "~/Library/Preferences/dev.notchable.app.plist",
    "~/Library/Caches/dev.notchable.app",
  ]
end
