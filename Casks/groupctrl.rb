cask "groupctrl" do
  version "0.2.0"
  sha256 "ff6911dcf3c4cf48688bacbbccdcbe0db7d32934454120cb35ad7334e911e7fd"

  url "https://github.com/brodmo-dev/GroupCtrl/releases/download/v#{version}/GroupCtrl.dmg"
  name "GroupCtrl"
  desc "Instant app switching with shared hotkeys"
  homepage "https://github.com/brodmo-dev/GroupCtrl"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "GroupCtrl.app"

  zap trash: [
    "~/.config/groupctrl",
    "~/Library/Application Support/GroupCtrl",
  ]
end
