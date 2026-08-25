
class Supersimple < Formula
  desc "CLI tool for Supersimple configuration management"
  homepage "https://github.com/gosupersimple/supersimple-cli"
  version "2.24.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://assets.supersimple.io/supersimple-cli/releases/v2.24.1/supersimple-arm64-apple-darwin", :using => :nounzip
      sha256 "cd28654224c32c8a444a5d1c17af7a367549bd06fdc8c36d4e610de052c51ef3"

      def install
        bin.install "supersimple-arm64-apple-darwin" => "supersimple"
      end
    else
      url "https://assets.supersimple.io/supersimple-cli/releases/v2.24.1/supersimple-x86_64-apple-darwin", :using => :nounzip
      sha256 "b3e8d811b1626b619d5062936b6af1f1aea4cd82c51c70b41556cf1e17db30ee"

      def install
        bin.install "supersimple-x86_64-apple-darwin" => "supersimple"
      end
    end
  end

  on_linux do
    url "https://assets.supersimple.io/supersimple-cli/releases/v2.24.1/supersimple-x86_64-linux-gnu", :using => :nounzip
    sha256 "af6f7797226131a9f578a77078f7970b646dd93b639d70fd0e36561a1d89069a"

    def install
      bin.install "supersimple-x86_64-linux-gnu" => "supersimple"
    end
  end
end

