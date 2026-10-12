cask "panevo" do
  version "1.3.3"
  sha256 "914be27f21ffbaf658a8a15e64ed0deb49cee996e30b306af26070020478fce5"

  url "https://github.com/bkrdmrcioglu/panevo/releases/download/v#{version}/Panevo-#{version}.dmg"
  name "Panevo"
  desc "Native window manager with snapping, hotkeys, and layout profiles"
  homepage "https://github.com/bkrdmrcioglu/panevo"

  depends_on macos: :sequoia

  app "Panevo.app"

  zap trash: [
    "~/Library/Preferences/com.panevo.app.Panevo.plist",
  ]
end
