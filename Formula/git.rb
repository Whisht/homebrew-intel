class Git < Formula
  desc "Distributed revision control system (standalone Intel build)"
  homepage "https://git-scm.com"
  url "https://github.com/Whisht/homebrew-intel/releases/download/prebuilt-intel/git-v2.56.0-x86_64-apple-darwin.tar.gz"
  version "2.56.0"
  sha256 "d74934b248de59abe4e788ee9763a9601422f28e6d383bbcd1850379258050af"

  def install
    prefix.install Dir["*"]
  end
end
