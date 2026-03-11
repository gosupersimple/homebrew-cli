
class Supersimple < Formula
  desc "CLI tool for Supersimple configuration management"
  homepage "https://github.com/gosupersimple/supersimple-cli"
  version "2.19.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://assets.supersimple.io/supersimple-cli/releases/v2.19.0/supersimple-arm64-apple-darwin", :using => :nounzip
      sha256 "7aeaa2366425734ffbf87f9beaca333b129056dce33d7a30f3e04d5d246912f5"

      def install
        bin.install "supersimple-arm64-apple-darwin" => "supersimple"
      end
    else
      url "https://assets.supersimple.io/supersimple-cli/releases/v2.19.0/supersimple-x86_64-apple-darwin", :using => :nounzip
      sha256 "95ab88f8078a9abbb759a2a07f543919bd8e931966ea709dfdfadb0ebd7d14ce"

      def install
        bin.install "supersimple-x86_64-apple-darwin" => "supersimple"
      end
    end
  end

  on_linux do
    url "https://assets.supersimple.io/supersimple-cli/releases/v2.19.0/supersimple-x86_64-linux-gnu", :using => :nounzip
    sha256 "5092822f3d4d7205233e73a9ad4712d19f2ff1193288993c63c926d5bd9f57a9"

    def install
      bin.install "supersimple-x86_64-linux-gnu" => "supersimple"
    end
  end
end

