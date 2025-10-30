
class Supersimple < Formula
  desc "CLI tool for Supersimple configuration management"
  homepage "https://github.com/gosupersimple/supersimple-cli"
  version "2.12.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://assets.supersimple.io/supersimple-cli/releases/v2.12.0/supersimple-arm64-apple-darwin", :using => :nounzip
      sha256 "93120e5c23515ea4ea3612b8d9ee1a111e5abf1878d4e4c19f72247e111912e2"

      def install
        bin.install "supersimple-arm64-apple-darwin" => "supersimple"
      end
    else
      url "https://assets.supersimple.io/supersimple-cli/releases/v2.12.0/supersimple-x86_64-apple-darwin", :using => :nounzip
      sha256 "469ca420b3fb501eef30262805eecd5921bdefd17f21dcf33b2d641c5ab1536d"

      def install
        bin.install "supersimple-x86_64-apple-darwin" => "supersimple"
      end
    end
  end

  on_linux do
    url "https://assets.supersimple.io/supersimple-cli/releases/v2.12.0/supersimple-x86_64-linux-gnu", :using => :nounzip
    sha256 "a1625421bfcad022ab735fe860b0a11e2276720a6af7aac4ae000910b3422dda"

    def install
      bin.install "supersimple-x86_64-linux-gnu" => "supersimple"
    end
  end
end

