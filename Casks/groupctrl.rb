cask "groupctrl" do
  version "0.5.0"
  sha256 arm:   "541a92d075b28d7688dd5ae6d3735c510b3d75f1ea19df4a0660e1b3010fdcaf",
         intel: "b1d9382d784fd841d33c15c59647799fd931b6fecb7a9bbc4b1a213f0f299cba"

  arch arm: "Arm", intel: "Intel"
  url "https://github.com/brodmo/GroupCtrl/releases/download/v#{version}/GroupCtrl-#{version}-#{arch}.dmg"
  name "GroupCtrl"
  desc "Instant app switching with shared hotkeys"
  homepage "https://github.com/brodmo/GroupCtrl"

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
