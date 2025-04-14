
class Supersimple < Formula
  desc "CLI tool for Supersimple configuration management"
  homepage "https://github.com/gosupersimple/supersimple-cli"
  version "2.10.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://assets.supersimple.io/supersimple-cli/releases/v2.10.0/supersimple-arm64-apple-darwin", :using => :nounzip
      sha256 "bd87a0ccad42ae2897553d252c602e89fc4098925ff33a10154e633b56be59b8"

      def install
        bin.install "supersimple-arm64-apple-darwin" => "supersimple"
      end
    else
      url "https://assets.supersimple.io/supersimple-cli/releases/v2.10.0/supersimple-x86_64-apple-darwin", :using => :nounzip
      sha256 "e0e96bd303c2b225fdd2f7f6afc3767e88ab7226764e4a0f85d631a2a443689f"

      def install
        bin.install "supersimple-x86_64-apple-darwin" => "supersimple"
      end
    end
  end

  on_linux do
    url "https://assets.supersimple.io/supersimple-cli/releases/v2.10.0/supersimple-x86_64-linux-gnu", :using => :nounzip
    sha256 "2813c26c0d72764ff08de661e16f80af1774e589a08d453dd2e052c77e218d5a"

    def install
      bin.install "supersimple-x86_64-linux-gnu" => "supersimple"
    end
  end
end

