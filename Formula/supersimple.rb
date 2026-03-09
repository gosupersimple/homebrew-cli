
class Supersimple < Formula
  desc "CLI tool for Supersimple configuration management"
  homepage "https://github.com/gosupersimple/supersimple-cli"
  version "2.17.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://assets.supersimple.io/supersimple-cli/releases/v2.17.0/supersimple-arm64-apple-darwin", :using => :nounzip
      sha256 "163704ae50d0f7ce9eb3fbc618256926d88b8a7e74cf278560cf0224c9f2d79e"

      def install
        bin.install "supersimple-arm64-apple-darwin" => "supersimple"
      end
    else
      url "https://assets.supersimple.io/supersimple-cli/releases/v2.17.0/supersimple-x86_64-apple-darwin", :using => :nounzip
      sha256 "ae3ddd3d13c2cdb71daa785bed0e88e6fba943182f54d4f5808342e09815a37d"

      def install
        bin.install "supersimple-x86_64-apple-darwin" => "supersimple"
      end
    end
  end

  on_linux do
    url "https://assets.supersimple.io/supersimple-cli/releases/v2.17.0/supersimple-x86_64-linux-gnu", :using => :nounzip
    sha256 "bbaba7b7d398e9ebce6c3684cdbe772583910c1855f9540d7e5e47cbb4a1f3ec"

    def install
      bin.install "supersimple-x86_64-linux-gnu" => "supersimple"
    end
  end
end

