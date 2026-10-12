cask "kite" do
  version "0.1.0"
  sha256 "430e2f4ad283bb80368edcfbc9c35f71427254f8a684a3f9a7a65d6fad70d135"

  url "https://github.com/bkrdmrcioglu/Kite/releases/download/v#{version}/Kite-#{version}-macOS.dmg"
  name "Kite"
  desc "DPI bypass that runs entirely on your Mac, no VPN server"
  homepage "https://github.com/bkrdmrcioglu/Kite"

  depends_on macos: ">= :sonoma"

  app "Kite.app"

  # quitting restores the system proxy settings
  uninstall quit: "com.bkrdmrcioglu.kite"

  zap trash: [
    "~/Library/Application Support/Kite",
    "~/Library/Preferences/com.bkrdmrcioglu.kite.plist",
  ]

  caveats <<~EOS
    If you enabled "Discord app" mode, turn it off in Kite before uninstalling
    so the entries Kite added to /etc/hosts are removed.
  EOS
end
