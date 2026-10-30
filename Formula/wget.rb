class Wget < Formula
  desc "Internet file retriever (standalone Intel build with static OpenSSL)"
  homepage "https://www.gnu.org/software/wget/"
  url "https://github.com/Whisht/homebrew-intel/releases/download/prebuilt-intel/wget-v1.25.0-x86_64-apple-darwin.tar.gz"
  version "1.25.0"
  sha256 "c0b1d50fc57292a567e5f223295ad2097badf4ea4e94f36142e173d0d4bfb80e"

  def install
    bin.install "wget"
    man1.install "wget.1" if File.exist?("wget.1")
  end
end
