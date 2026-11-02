class Carapace < Formula
  desc "Multi-shell multi-command argument completer"
  homepage "https://carapace.sh"
  url "https://github.com/carapace-sh/carapace-bin/releases/download/v1.8.2/carapace-bin_1.8.2_darwin_amd64.tar.gz"
  version "1.8.2"
  sha256 "4ea74b50828bbef60ebb1726829e52788b2c08817ec776fb121b2886d03ab5fe"

  def install
    bin.install "carapace"
  end
end
