
class Supersimple < Formula
  desc "CLI tool for Supersimple configuration management"
  homepage "https://github.com/gosupersimple/supersimple-cli"
  version "2.19.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://assets.supersimple.io/supersimple-cli/releases/v2.19.6/supersimple-arm64-apple-darwin", :using => :nounzip
      sha256 "1a5656836aa6357e51b8b067f178270a0258882d271225e2a6eb38868468d065"

      def install
        bin.install "supersimple-arm64-apple-darwin" => "supersimple"
      end
    else
      url "https://assets.supersimple.io/supersimple-cli/releases/v2.19.6/supersimple-x86_64-apple-darwin", :using => :nounzip
      sha256 "ec3c3e0fbc603017adcec35587027252e8b6830dd70fdb1aa4ab2470f068e706"

      def install
        bin.install "supersimple-x86_64-apple-darwin" => "supersimple"
      end
    end
  end

  on_linux do
    url "https://assets.supersimple.io/supersimple-cli/releases/v2.19.6/supersimple-x86_64-linux-gnu", :using => :nounzip
    sha256 "98186baeddfa5ef4661ab7c063816323cfefb5f3d6e5e744bbbe896a8d451225"

    def install
      bin.install "supersimple-x86_64-linux-gnu" => "supersimple"
    end
  end
end

