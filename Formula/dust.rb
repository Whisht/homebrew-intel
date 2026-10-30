class Dust < Formula
  desc "More intuitive version of du in rust"
  homepage "https://github.com/bootandy/dust"
  url "https://github.com/bootandy/dust/releases/download/v1.2.6/dust-v1.2.6-x86_64-apple-darwin.tar.gz"
  version "1.2.6"
  sha256 "7603c92462bd56305847732eb25d70ab06386d7bcfbce7532b7cf3937fd9684f"

  def install
    bin.install "dust"
  end
end
