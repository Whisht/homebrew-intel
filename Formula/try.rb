class Try < Formula
  desc "Fresh directories for every vibe - manage ephemeral experiment directories"
  homepage "https://github.com/tobi/try"
  url "https://github.com/tobi/try/archive/refs/tags/v1.9.0.tar.gz"
  version "1.9.0"
  sha256 "9f6286851a0bb778e3e067921537dda7e9bd40343acdda48d9ba471e6179dd86"

  def install
    bin.install "try.rb" => "try"
  end
end
