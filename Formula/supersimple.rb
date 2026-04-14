
class Supersimple < Formula
  desc "CLI tool for Supersimple configuration management"
  homepage "https://github.com/gosupersimple/supersimple-cli"
  version "2.19.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://assets.supersimple.io/supersimple-cli/releases/v2.19.5/supersimple-arm64-apple-darwin", :using => :nounzip
      sha256 "858aa3050fc4fb01176681df0c93d5894a1e37ff0ef4a4b4268ab1fe62ead52c"

      def install
        bin.install "supersimple-arm64-apple-darwin" => "supersimple"
      end
    else
      url "https://assets.supersimple.io/supersimple-cli/releases/v2.19.5/supersimple-x86_64-apple-darwin", :using => :nounzip
      sha256 "feec6db9c9abac1a046cd9c510542c487c4ae273493f524493df6a71d755ab01"

      def install
        bin.install "supersimple-x86_64-apple-darwin" => "supersimple"
      end
    end
  end

  on_linux do
    url "https://assets.supersimple.io/supersimple-cli/releases/v2.19.5/supersimple-x86_64-linux-gnu", :using => :nounzip
    sha256 "ace1d8ae7d00072426f08e5b0aa6d40735c8d333c4438f678d4b1597512a6143"

    def install
      bin.install "supersimple-x86_64-linux-gnu" => "supersimple"
    end
  end
end

