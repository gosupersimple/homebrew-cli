
class Supersimple < Formula
  desc "CLI tool for Supersimple configuration management"
  homepage "https://github.com/gosupersimple/supersimple-cli"
  version "2.29.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://assets.supersimple.io/supersimple-cli/releases/v2.29.0/supersimple-arm64-apple-darwin", :using => :nounzip
      sha256 "0c7681d4c7d5a87be1a0c44c6503d95310f763c6f570699b6ecf00bf5a7e9306"

      def install
        bin.install "supersimple-arm64-apple-darwin" => "supersimple"
      end
    else
      url "https://assets.supersimple.io/supersimple-cli/releases/v2.29.0/supersimple-x86_64-apple-darwin", :using => :nounzip
      sha256 "1044415d4eedc33d5b4bbb5c0307ffcfe193118d6b730a147102499d627336e2"

      def install
        bin.install "supersimple-x86_64-apple-darwin" => "supersimple"
      end
    end
  end

  on_linux do
    url "https://assets.supersimple.io/supersimple-cli/releases/v2.29.0/supersimple-x86_64-linux-gnu", :using => :nounzip
    sha256 "100150dac597749ad8e144e3aaed744599ef1b1f541399ecd90f37dc17165acd"

    def install
      bin.install "supersimple-x86_64-linux-gnu" => "supersimple"
    end
  end
end

