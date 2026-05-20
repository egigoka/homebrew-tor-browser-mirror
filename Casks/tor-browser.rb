cask "tor-browser" do
  version "15.0.14"
  sha256 "78b9a4511e160d6435b1dcf7942bcf4e0696aae2079dabe39b250e7860b852e5"

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
