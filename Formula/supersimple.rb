
class Supersimple < Formula
  desc "CLI tool for Supersimple configuration management"
  homepage "https://github.com/gosupersimple/supersimple-cli"
  version "2.9.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://assets.supersimple.io/supersimple-cli/releases/v2.9.3/supersimple-arm64-apple-darwin", :using => :nounzip
      sha256 "091e4baa4710a67ec4a24c3f9b48dc7f9734d749b712d761a87e7c61ffd98b55"

      def install
        bin.install "supersimple-arm64-apple-darwin" => "supersimple"
      end
    else
      url "https://assets.supersimple.io/supersimple-cli/releases/v2.9.3/supersimple-x86_64-apple-darwin", :using => :nounzip
      sha256 "33ab738e54f09a3cc050dadc66d9e6da89cd915ff692890b5dee4130b3550b4e"

      def install
        bin.install "supersimple-x86_64-apple-darwin" => "supersimple"
      end
    end
  end

  on_linux do
    url "https://assets.supersimple.io/supersimple-cli/releases/v2.9.3/supersimple-x86_64-linux-gnu", :using => :nounzip
    sha256 "ecef975a1c6371cbe3d6af477040dd7db1244c105ebfb483721f56faa9f99509"

    def install
      bin.install "supersimple-x86_64-linux-gnu" => "supersimple"
    end
  end
end

