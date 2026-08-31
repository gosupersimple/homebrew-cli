
class Supersimple < Formula
  desc "CLI tool for Supersimple configuration management"
  homepage "https://github.com/gosupersimple/supersimple-cli"
  version "2.25.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://assets.supersimple.io/supersimple-cli/releases/v2.25.1/supersimple-arm64-apple-darwin", :using => :nounzip
      sha256 "29d7823602c335bfbeca5f8cd2fe05e0f70df7f9d8a5f1a16c4d3176730ee8e3"

      def install
        bin.install "supersimple-arm64-apple-darwin" => "supersimple"
      end
    else
      url "https://assets.supersimple.io/supersimple-cli/releases/v2.25.1/supersimple-x86_64-apple-darwin", :using => :nounzip
      sha256 "b5303e07684ad1d98a02772379481fe47b4480a26f94780ed867ddf71cceb0eb"

      def install
        bin.install "supersimple-x86_64-apple-darwin" => "supersimple"
      end
    end
  end

  on_linux do
    url "https://assets.supersimple.io/supersimple-cli/releases/v2.25.1/supersimple-x86_64-linux-gnu", :using => :nounzip
    sha256 "5e102a586a2c2560fec3dd361e20b3e63269731b695ed5d4ba11ee2e92877404"

    def install
      bin.install "supersimple-x86_64-linux-gnu" => "supersimple"
    end
  end
end

