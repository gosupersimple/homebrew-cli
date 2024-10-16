
class Supersimple < Formula
  desc "CLI tool for Supersimple configuration management"
  homepage "https://github.com/gosupersimple/supersimple-cli"
  version "2.8.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://assets.supersimple.io/supersimple-cli/releases/v2.8.1/supersimple-arm64-apple-darwin", :using => :nounzip
      sha256 "b9ea2aea8cbf58a61ecf2a34be222b2ed5179648c13238ebe8d4e82176de7ce9"

      def install
        bin.install "supersimple-arm64-apple-darwin" => "supersimple"
      end
    else
      url "https://assets.supersimple.io/supersimple-cli/releases/v2.8.1/supersimple-x86_64-apple-darwin", :using => :nounzip
      sha256 "de26e17d8d4319e2db1cd5d5ec2d89c25801e0460183f6d2d136cfbb496fae2d"

      def install
        bin.install "supersimple-x86_64-apple-darwin" => "supersimple"
      end
    end
  end

  on_linux do
    url "https://assets.supersimple.io/supersimple-cli/releases/v2.8.1/supersimple-x86_64-linux-gnu", :using => :nounzip
    sha256 "5c3d73f1eaa6ac9b629a8343f749ad6477a728f3f5348754d549b1369e8ffe2b"

    def install
      bin.install "supersimple-x86_64-linux-gnu" => "supersimple"
    end
  end
end

