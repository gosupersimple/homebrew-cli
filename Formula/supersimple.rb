
class Supersimple < Formula
  desc "CLI tool for Supersimple configuration management"
  homepage "https://github.com/gosupersimple/supersimple-cli"
  version "2.27.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://assets.supersimple.io/supersimple-cli/releases/v2.27.1/supersimple-arm64-apple-darwin", :using => :nounzip
      sha256 "41f40193e0a53aee08393b161d53ae9def52430f3d36c6abca71a966ebe9ed08"

      def install
        bin.install "supersimple-arm64-apple-darwin" => "supersimple"
      end
    else
      url "https://assets.supersimple.io/supersimple-cli/releases/v2.27.1/supersimple-x86_64-apple-darwin", :using => :nounzip
      sha256 "cd56447d072a38ebbe4192e6d4bd54f7913b89e0d6fc32edd620fb1f652936f5"

      def install
        bin.install "supersimple-x86_64-apple-darwin" => "supersimple"
      end
    end
  end

  on_linux do
    url "https://assets.supersimple.io/supersimple-cli/releases/v2.27.1/supersimple-x86_64-linux-gnu", :using => :nounzip
    sha256 "83151aba129d200398591984b03dd4a1a8d947a9707957f56fc899ffbf4f6ce2"

    def install
      bin.install "supersimple-x86_64-linux-gnu" => "supersimple"
    end
  end
end

