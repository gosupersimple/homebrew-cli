
class Supersimple < Formula
  desc "CLI tool for Supersimple configuration management"
  homepage "https://github.com/gosupersimple/supersimple-cli"
  version "2.19.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://assets.supersimple.io/supersimple-cli/releases/v2.19.4/supersimple-arm64-apple-darwin", :using => :nounzip
      sha256 "cae57a0875856c07db5e77f89d7da0a6a60d14bee1304a65b20c62407968334d"

      def install
        bin.install "supersimple-arm64-apple-darwin" => "supersimple"
      end
    else
      url "https://assets.supersimple.io/supersimple-cli/releases/v2.19.4/supersimple-x86_64-apple-darwin", :using => :nounzip
      sha256 "295d44c1d6fc9ef7c92b728450cb02e7b9c98dfc16dbe4eebf83dbc099a9c554"

      def install
        bin.install "supersimple-x86_64-apple-darwin" => "supersimple"
      end
    end
  end

  on_linux do
    url "https://assets.supersimple.io/supersimple-cli/releases/v2.19.4/supersimple-x86_64-linux-gnu", :using => :nounzip
    sha256 "78b3e2a007aebe361cafa6d16e8ce22f232be5940678e6b5212f33169a4a0b1e"

    def install
      bin.install "supersimple-x86_64-linux-gnu" => "supersimple"
    end
  end
end

