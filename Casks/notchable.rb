cask "notchable" do
  version "0.1.0"
  sha256 "652f8311b34f8d4a79cd021f66be66454cbe99c5510571d66e0b13ab293442ae"

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
