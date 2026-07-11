cask "notchable" do
  version "0.1.0"
  sha256 "8d67df2f55f9991257c1e1795d96e2a1fad682ee38f518fc28784fa5dedc6d97"

  url "https://notchable.io/download/Notchable-0.1.0.zip"
  name "Notchable"
  desc "Dynamic Island-style surface for the MacBook notch"
  homepage "https://notchable.io/"

  livecheck do
    url "https://notchable.io/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Notchable.app"

  zap trash: [
    "~/Library/Application Support/Notchable",
    "~/Library/Preferences/dev.notchable.app.plist",
    "~/Library/Caches/dev.notchable.app",
  ]
end
