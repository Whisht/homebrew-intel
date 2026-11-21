class Fx < Formula
  desc "Terminal JSON viewer and processor"
  homepage "https://github.com/antonmedv/fx"
  url "https://github.com/antonmedv/fx/releases/download/40.0.2/fx_darwin_amd64"
  version "40.0.2"
  sha256 "41ea20ec4addf232a5c9dcd786af76b10c54ec3d9cf71086af58b02038af87ce"

  def install
    bin.install "fx_darwin_amd64" => "fx"
  end
end
