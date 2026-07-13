cask "notchable" do
  version "0.1.0"
  sha256 "1ad7843394404425049b36c40e770c45feadc2ef18aefcdbac264bdc16fa1558"

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
