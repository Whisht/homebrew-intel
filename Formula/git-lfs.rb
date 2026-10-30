class GitLfs < Formula
  desc "Git extension for versioning large files"
  homepage "https://github.com/git-lfs/git-lfs"
  url "https://github.com/git-lfs/git-lfs/releases/download/v3.8.1/git-lfs-darwin-amd64-v3.8.1.zip"
  version "3.8.1"
  sha256 "4292b3518e717e53c20a6c2c0696e2069a21e97500ad14b80b06bd52de8f3b72"

  def install
    bin.install "git-lfs"
    man1.install Dir["man/man1/*.1"]
  end
end
