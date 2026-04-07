cask "groupctrl" do
  version "0.5.1"
  sha256 arm:   "c8ad7de3bb4f6c321db9bd2fda0d0c9971585c541a6353162cd825ce08021258",
         intel: "3a06700365ee1c3c02baa9336ff9179d61e26887c8d87189845f8f06974c22c6"

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
