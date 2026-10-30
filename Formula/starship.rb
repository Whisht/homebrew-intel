class Starship < Formula
  desc "Cross-shell prompt for astronauts"
  homepage "https://github.com/starship/starship"
  url "https://github.com/starship/starship/releases/download/v1.27.0/starship-x86_64-apple-darwin.tar.gz"
  version "1.27.0"
  sha256 "344e4d38787e0aa86dd522ae5462e6fb6da1227691f81a79ffed480a4563ccb3"

  def install
    bin.install "starship"
  end
end
