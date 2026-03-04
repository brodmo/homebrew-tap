cask "groupctrl" do
  version "0.2.1"

  arch arm: "Arm", intel: "Intel"
  sha256 arm:   "cc24be90fdd4e403474791f84664b35383b6bb07700559afd4c1159f3f759591",
         intel: "3942f16ef10c06719063f140e58601710ab43855659cadaa9d519860c77d2199"
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
