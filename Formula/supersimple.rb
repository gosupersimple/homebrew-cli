
class Supersimple < Formula
  desc "CLI tool for Supersimple configuration management"
  homepage "https://github.com/gosupersimple/supersimple-cli"
  version "2.31.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://assets.supersimple.io/supersimple-cli/releases/v2.31.0/supersimple-arm64-apple-darwin", :using => :nounzip
      sha256 "2d79264c8b2ae06df8675461b3738cda8fa50fb4af6fabdcc7d3cf9ea6a96c9d"

      def install
        bin.install "supersimple-arm64-apple-darwin" => "supersimple"
      end
    else
      url "https://assets.supersimple.io/supersimple-cli/releases/v2.31.0/supersimple-x86_64-apple-darwin", :using => :nounzip
      sha256 "28a5318d54a08cf4cab43e0d5e3d92f5f20bf0152467c9b6b899387284268665"

      def install
        bin.install "supersimple-x86_64-apple-darwin" => "supersimple"
      end
    end
  end

  on_linux do
    url "https://assets.supersimple.io/supersimple-cli/releases/v2.31.0/supersimple-x86_64-linux-gnu", :using => :nounzip
    sha256 "b978fcce06ff81dac71074b979137575cd420fd4e04e7ba0ac3bfbec8cd714b2"

    def install
      bin.install "supersimple-x86_64-linux-gnu" => "supersimple"
    end
  end
end

