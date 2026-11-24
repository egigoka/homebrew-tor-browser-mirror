cask "tor-browser" do
  version "16.0.3"
  sha256 "9655e0a29702e60653cbcf5c547858b0fbff95535471ef8d7aa94e6013619e05"

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
