cask "tor-browser" do
  version "15.0.11"
  sha256 "d7699b4e134cbaaae4f09c3d06d20d248bff443baff45eec3b0d4d0a1f32408d"

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
