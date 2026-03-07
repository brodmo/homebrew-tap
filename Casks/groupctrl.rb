cask "groupctrl" do
  version "0.3.0"
  sha256 arm:   "04e7d9d22b9cf6535510c28cdeb073644dcee8ef8781070946a4b4d1744b13d4",
         intel: "fc85df65bf6f9e15044d3e9d2ff314cc36a3851567b384b96e1428293aaae882"

  arch arm: "Arm", intel: "Intel"
  url "https://github.com/brodmo-dev/GroupCtrl/releases/download/v#{version}/GroupCtrl-#{version}-#{arch}.dmg"
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
