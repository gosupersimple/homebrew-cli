
class Supersimple < Formula
  desc "CLI tool for Supersimple configuration management"
  homepage "https://github.com/gosupersimple/supersimple-cli"
  version "2.13.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://assets.supersimple.io/supersimple-cli/releases/v2.13.4/supersimple-arm64-apple-darwin", :using => :nounzip
      sha256 "cc34b25abed2f0bbd393bb9d6584166d7ad6fb8b83868da70343e4cc1c6461c4"

      def install
        bin.install "supersimple-arm64-apple-darwin" => "supersimple"
      end
    else
      url "https://assets.supersimple.io/supersimple-cli/releases/v2.13.4/supersimple-x86_64-apple-darwin", :using => :nounzip
      sha256 "54a42925720cded29017c3a682554632f30e79108ac175e1160c0600d326ff5e"

      def install
        bin.install "supersimple-x86_64-apple-darwin" => "supersimple"
      end
    end
  end

  on_linux do
    url "https://assets.supersimple.io/supersimple-cli/releases/v2.13.4/supersimple-x86_64-linux-gnu", :using => :nounzip
    sha256 "5939043ec09549443e9ce53f73674a901d6f3f47e503dc7d0119262b6fbaf2f4"

    def install
      bin.install "supersimple-x86_64-linux-gnu" => "supersimple"
    end
  end
end

