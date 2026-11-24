class Carapace < Formula
  desc "Multi-shell multi-command argument completer"
  homepage "https://carapace.sh"
  url "https://github.com/carapace-sh/carapace-bin/releases/download/v1.8.5/carapace-bin_1.8.5_darwin_amd64.tar.gz"
  version "1.8.5"
  sha256 "0c31620c56d1814e4a433a8403e3ff0e12f9c09ef6fbe3a937aca9e2ada973e7"

  def install
    bin.install "carapace"
  end
end
