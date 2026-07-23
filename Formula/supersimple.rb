
class Supersimple < Formula
  desc "CLI tool for Supersimple configuration management"
  homepage "https://github.com/gosupersimple/supersimple-cli"
  version "2.22.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://assets.supersimple.io/supersimple-cli/releases/v2.22.0/supersimple-arm64-apple-darwin", :using => :nounzip
      sha256 "8277767fc647b6613959d08a6896d76dfe266ec384b10b5a222285887edcca55"

      def install
        bin.install "supersimple-arm64-apple-darwin" => "supersimple"
      end
    else
      url "https://assets.supersimple.io/supersimple-cli/releases/v2.22.0/supersimple-x86_64-apple-darwin", :using => :nounzip
      sha256 "41e99afeb845a2d7aa641cb914e92490859f48b369d3758e7bc8e9a3400c56b0"

      def install
        bin.install "supersimple-x86_64-apple-darwin" => "supersimple"
      end
    end
  end

  on_linux do
    url "https://assets.supersimple.io/supersimple-cli/releases/v2.22.0/supersimple-x86_64-linux-gnu", :using => :nounzip
    sha256 "c6c61326240acd5a4dbc0a587204c2d7098d5f6754358e4a0e888276a6e2787b"

    def install
      bin.install "supersimple-x86_64-linux-gnu" => "supersimple"
    end
  end
end

