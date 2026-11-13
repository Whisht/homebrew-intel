class Atuin < Formula
  desc "Improved shell history for zsh, bash, fish and nushell"
  homepage "https://github.com/atuinsh/atuin"
  url "https://github.com/atuinsh/atuin/releases/download/v18.24.8/atuin-x86_64-apple-darwin.tar.gz"
  version "18.24.8"
  sha256 "4c68b3c4f0f73cc9ef55388bb6bb42d00816d4c19684bee685e47b8098ec263e"

  def install
    bin.install "atuin"
  end
end
