class Btop < Formula
  desc "Resource monitor that shows usage and stats for processor, memory, disks, network and processes"
  homepage "https://github.com/aristocratos/btop"
  url "https://github.com/Whisht/homebrew-intel/releases/download/prebuilt-intel/btop-v1.4.8-x86_64-apple-darwin.tar.gz"
  version "1.4.8"
  sha256 "fe618cfc05311aa5d38426e00019f484fc07ad23ea95953f15d77f26a5e8d185"

  def install
    prefix.install Dir["*"]
  end
end
