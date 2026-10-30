class Hyperfine < Formula
  desc "Command-line benchmarking tool"
  homepage "https://github.com/sharkdp/hyperfine"
  url "https://github.com/sharkdp/hyperfine/releases/download/v2.0.0/hyperfine-v2.0.0-x86_64-apple-darwin.tar.gz"
  version "2.0.0"
  sha256 "8afe204926afefa406ad320cef0672b739e5f676c623fbd6d43d779bacd684e3"

  def install
    bin.install "hyperfine"
    man1.install "hyperfine.1" if File.exist?("hyperfine.1")
    zsh_completion.install "autocomplete/_hyperfine" if File.exist?("autocomplete/_hyperfine")
    bash_completion.install "autocomplete/hyperfine.bash" if File.exist?("autocomplete/hyperfine.bash")
    fish_completion.install "autocomplete/hyperfine.fish" if File.exist?("autocomplete/hyperfine.fish")
  end
end
