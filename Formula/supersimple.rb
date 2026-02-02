
class Supersimple < Formula
  desc "CLI tool for Supersimple configuration management"
  homepage "https://github.com/gosupersimple/supersimple-cli"
  version "2.15.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://assets.supersimple.io/supersimple-cli/releases/v2.15.0/supersimple-arm64-apple-darwin", :using => :nounzip
      sha256 "465cf4009985e32507082ef5d2bcfa02c5ec147e62afcad0e6e2f0d5f11ff0f2"

      def install
        bin.install "supersimple-arm64-apple-darwin" => "supersimple"
      end
    else
      url "https://assets.supersimple.io/supersimple-cli/releases/v2.15.0/supersimple-x86_64-apple-darwin", :using => :nounzip
      sha256 "85bfe3887f5b6a6c8e20329c33f8f1398651d4afa08d190ab4431e9d13e5d988"

      def install
        bin.install "supersimple-x86_64-apple-darwin" => "supersimple"
      end
    end
  end

  on_linux do
    url "https://assets.supersimple.io/supersimple-cli/releases/v2.15.0/supersimple-x86_64-linux-gnu", :using => :nounzip
    sha256 "e1d487fa85a9ae4c1fa63d332a6baa52286cb3b1da8e4e11b3072d06d221f80a"

    def install
      bin.install "supersimple-x86_64-linux-gnu" => "supersimple"
    end
  end
end

