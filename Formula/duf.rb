class Duf < Formula
  desc "Disk Usage/Free Utility - a better 'df' alternative"
  homepage "https://github.com/muesli/duf"
  url "https://github.com/muesli/duf/releases/download/v0.9.1/duf_0.9.1_darwin_x86_64.tar.gz"
  version "0.9.1"
  sha256 "e3384519b0055c904b7352b55cd81bd101f5dd94dab1195a72880bddca7c2aaf"

  def install
    bin.install "duf"
  end
end
