class Carapace < Formula
  desc "Multi-shell multi-command argument completer"
  homepage "https://carapace.sh"
  url "https://github.com/carapace-sh/carapace-bin/releases/download/v1.8.1/carapace-bin_1.8.1_darwin_amd64.tar.gz"
  version "1.8.1"
  sha256 "c91c27d019237e8c3e09e9488c3b49681d14c9b85c29b2799529b2b5ab752183"

  def install
    bin.install "carapace"
  end
end
