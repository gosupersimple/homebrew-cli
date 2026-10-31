
class Supersimple < Formula
  desc "CLI tool for Supersimple configuration management"
  homepage "https://github.com/gosupersimple/supersimple-cli"
  version "2.30.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://assets.supersimple.io/supersimple-cli/releases/v2.30.0/supersimple-arm64-apple-darwin", :using => :nounzip
      sha256 "eeb844447691855ca8ee06fbb2136a1391e61c1e4f6c6ccbace2411cc036ed7d"

      def install
        bin.install "supersimple-arm64-apple-darwin" => "supersimple"
      end
    else
      url "https://assets.supersimple.io/supersimple-cli/releases/v2.30.0/supersimple-x86_64-apple-darwin", :using => :nounzip
      sha256 "19de241f4cd67b972573e81a916a8baf7b01f18adfaae150edcab5344994780b"

      def install
        bin.install "supersimple-x86_64-apple-darwin" => "supersimple"
      end
    end
  end

  on_linux do
    url "https://assets.supersimple.io/supersimple-cli/releases/v2.30.0/supersimple-x86_64-linux-gnu", :using => :nounzip
    sha256 "9d2c7752a66e5b076b583b89d0a9652e600013a838fda3e6cf774c6aa8b48e5d"

    def install
      bin.install "supersimple-x86_64-linux-gnu" => "supersimple"
    end
  end
end

