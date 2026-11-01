class Bottom < Formula
  desc "Yet another cross-platform graphical process/system monitor"
  homepage "https://github.com/ClementTsang/bottom"
  url "https://github.com/ClementTsang/bottom/releases/download/0.15.0/bottom_x86_64-apple-darwin.tar.gz"
  version "0.15.0"
  sha256 "6a7f5e32fc2c272256ad5c77aa8aaede02e1e86cf3ba4715acb894d3d6d5b361"

  def install
    bin.install "btm"
    zsh_completion.install "completion/_btm" if File.exist?("completion/_btm")
    bash_completion.install "completion/btm.bash" if File.exist?("completion/btm.bash")
    fish_completion.install "completion/btm.fish" if File.exist?("completion/btm.fish")
  end
end
