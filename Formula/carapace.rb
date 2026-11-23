class Carapace < Formula
  desc "Multi-shell multi-command argument completer"
  homepage "https://carapace.sh"
  url "https://github.com/carapace-sh/carapace-bin/releases/download/v1.8.4/carapace-bin_1.8.4_darwin_amd64.tar.gz"
  version "1.8.4"
  sha256 "ce27b1ea3d682c521ad7d2e875170e95028c0b675744d4bff67438c920be4678"

  def install
    bin.install "carapace"
  end
end
