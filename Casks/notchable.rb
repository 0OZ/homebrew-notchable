cask "notchable" do
  version "0.1.0"
  sha256 "a2642e06cd1e9274d325d65fe672d73489288c7536138b29fdc81bba1c4bc504"

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
