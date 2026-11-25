class Dust < Formula
  desc "More intuitive version of du in rust"
  homepage "https://github.com/bootandy/dust"
  url "https://github.com/bootandy/dust/releases/download/v1.2.8/dust-v1.2.8-x86_64-apple-darwin.tar.gz"
  version "1.2.8"
  sha256 "e875ace7b7b5aa06467375c5d297110005c48a9f16c8a38c43981f14d325372f"

  def install
    bin.install "dust"
  end
end
