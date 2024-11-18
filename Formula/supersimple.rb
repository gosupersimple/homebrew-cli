
class Supersimple < Formula
  desc "CLI tool for Supersimple configuration management"
  homepage "https://github.com/gosupersimple/supersimple-cli"
  version "2.9.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://assets.supersimple.io/supersimple-cli/releases/v2.9.2/supersimple-arm64-apple-darwin", :using => :nounzip
      sha256 "e0a9729a72a852b86a54472b605c20709b5f47f5ce4f0fae8f53926015a2a538"

      def install
        bin.install "supersimple-arm64-apple-darwin" => "supersimple"
      end
    else
      url "https://assets.supersimple.io/supersimple-cli/releases/v2.9.2/supersimple-x86_64-apple-darwin", :using => :nounzip
      sha256 "1fe45407f9fb297f8dc26d1870fb63f19ff3aa8a963dbe17be823b1cb51e96dd"

      def install
        bin.install "supersimple-x86_64-apple-darwin" => "supersimple"
      end
    end
  end

  on_linux do
    url "https://assets.supersimple.io/supersimple-cli/releases/v2.9.2/supersimple-x86_64-linux-gnu", :using => :nounzip
    sha256 "fd9e70f204bdcf177812ecc29c158b46b1c0b8bd4dabe5c08faa416b37be9afe"

    def install
      bin.install "supersimple-x86_64-linux-gnu" => "supersimple"
    end
  end
end

