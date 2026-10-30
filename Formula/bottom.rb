class Bottom < Formula
  desc "Yet another cross-platform graphical process/system monitor"
  homepage "https://github.com/ClementTsang/bottom"
  url "https://github.com/ClementTsang/bottom/releases/download/0.14.9/bottom_x86_64-apple-darwin.tar.gz"
  version "0.14.9"
  sha256 "d0b1d446963ee3c4dfbfe2efd9614cfdc77f39e8268bf8cc2e0b5b6cea982774"

  def install
    bin.install "btm"
    zsh_completion.install "completion/_btm" if File.exist?("completion/_btm")
    bash_completion.install "completion/btm.bash" if File.exist?("completion/btm.bash")
    fish_completion.install "completion/btm.fish" if File.exist?("completion/btm.fish")
  end
end
