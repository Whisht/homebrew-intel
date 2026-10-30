class Lazydocker < Formula
  desc "Lazier way to manage everything docker"
  homepage "https://github.com/jesseduffield/lazydocker"
  url "https://github.com/jesseduffield/lazydocker/releases/download/v0.25.2/lazydocker_0.25.2_Darwin_x86_64.tar.gz"
  version "0.25.2"
  sha256 "af70b6e234089aa24924db25fc201d17f224e76d334e743e4595d30cf83a013b"

  def install
    bin.install "lazydocker"
  end
end
