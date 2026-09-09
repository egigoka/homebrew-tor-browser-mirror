cask "tor-browser" do
  version "15.0.22"
  sha256 "4e8f1a7a6e978b8bcd991f294b59b9c6bbf253c559b122c8888b10eefaf00d87"

  url "https://github.com/egigoka/homebrew-tor-browser-mirror/releases/download/v#{version}/tor-browser-macos-#{version}.dmg"
  name "Tor Browser"
  desc "Anonymous web browser based on Firefox (mirrored from torproject.org)"
  homepage "https://www.torproject.org/"

  livecheck do
    url "https://www.torproject.org/dist/torbrowser/"
    regex(%r{href=["']?(\d+(?:\.\d+){1,2})/}i)
  end

  app "Tor Browser.app"

  zap trash: [
    "~/Library/Application Support/TorBrowser-Data",
    "~/Library/Saved Application State/org.torproject.torbrowser.savedState",
  ]
end
