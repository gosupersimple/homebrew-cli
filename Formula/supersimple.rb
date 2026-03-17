
class Supersimple < Formula
  desc "CLI tool for Supersimple configuration management"
  homepage "https://github.com/gosupersimple/supersimple-cli"
  version "2.19.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://assets.supersimple.io/supersimple-cli/releases/v2.19.2/supersimple-arm64-apple-darwin", :using => :nounzip
      sha256 "46391a44b788cf2cd08d06d00cdc2be7fcab37400601f5c4b587b1878f1cee49"

      def install
        bin.install "supersimple-arm64-apple-darwin" => "supersimple"
      end
    else
      url "https://assets.supersimple.io/supersimple-cli/releases/v2.19.2/supersimple-x86_64-apple-darwin", :using => :nounzip
      sha256 "6e3230713abbde380a894aa83b74d5e8af7aa497759ed1d9261aefa6459d800e"

      def install
        bin.install "supersimple-x86_64-apple-darwin" => "supersimple"
      end
    end
  end

  on_linux do
    url "https://assets.supersimple.io/supersimple-cli/releases/v2.19.2/supersimple-x86_64-linux-gnu", :using => :nounzip
    sha256 "2c7bfab2bd398396c6ed153f88db64a57285bfd9fe5a27a33c73ce2c3125c85f"

    def install
      bin.install "supersimple-x86_64-linux-gnu" => "supersimple"
    end
  end
end

