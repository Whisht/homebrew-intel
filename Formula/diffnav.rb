class Diffnav < Formula
  desc "Git diff pager based on delta with a file tree, ala GitHub"
  homepage "https://github.com/dlvhdr/diffnav"
  url "https://github.com/dlvhdr/diffnav/releases/download/v0.13.1/diffnav_Darwin_x86_64.tar.gz"
  version "0.13.1"
  sha256 "16dd53d1e0ef1450cd654ca5115e5dddd7c0a7860fc5a7a21f0838de900ae4c6"

  def install
    bin.install "diffnav"
  end
end
