class Curlie < Formula
  desc "Power of curl, ease of use of httpie"
  homepage "https://github.com/rs/curlie"
  url "https://github.com/rs/curlie/releases/download/v1.8.2/curlie_1.8.2_darwin_amd64.tar.gz"
  version "1.8.2"
  sha256 "2c3493a39a0e07beed52a97db643995f32511fd3bab4a831e27ca8cbb1f06ad7"

  def install
    bin.install "curlie"
  end
end
