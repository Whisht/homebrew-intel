class Fx < Formula
  desc "Terminal JSON viewer and processor"
  homepage "https://github.com/antonmedv/fx"
  url "https://github.com/antonmedv/fx/releases/download/40.0.1/fx_darwin_amd64"
  version "40.0.1"
  sha256 "40b8b253cf578b69ab0b6464918ddb14a66a45ee1d87320a58611141721ae511"

  def install
    bin.install "fx_darwin_amd64" => "fx"
  end
end
