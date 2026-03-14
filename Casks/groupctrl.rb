cask "groupctrl" do
  version "0.3.1"
  sha256 arm:   "b657fafe610cacedc2071ba86431f58b87d5cb989c1aecb4a95a3d4ccb29f7dd",
         intel: "97c2d9fc849b5e9486a568df1e6956cfea4c45375447f8eba08341d50192ec2f"

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
