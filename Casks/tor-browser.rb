cask "tor-browser" do
  version "15.0.15"
  sha256 "a46ae3494e92795f476dfb57a2d542295408fc2c73be5ba593514b51262e1a18"

  url "https://github.com/egigoka/homebrew-tor-browser-mirror/releases/download/v#{version}/tor-browser-macos-#{version}.dmg",
      verified: "github.com/egigoka/homebrew-tor-browser-mirror/"
  name "Tor Browser"
  desc "Anonymous web browser based on Firefox (mirrored from torproject.org)"
  homepage "https://www.torproject.org/"

  livecheck do
    url "https://www.torproject.org/dist/torbrowser/"
    regex(%r{href=["']?(\d+(?:\.\d+){1,2})/}i)
  end

  depends_on macos: ">= :catalina"

  app "Tor Browser.app"

  zap trash: [
    "~/Library/Application Support/TorBrowser-Data",
    "~/Library/Saved Application State/org.torproject.torbrowser.savedState",
  ]
end
