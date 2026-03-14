cask "groupctrl" do
  version "0.4.0"
  sha256 arm:   "3483b077322b6b2a0c930fb208ef6771a22fb639b24c854a5ab77226b5bc0605",
         intel: "adef802b14dc555db7415f015a17bfeab9f1dc6d287312a34895b74aa3f39b16"

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
