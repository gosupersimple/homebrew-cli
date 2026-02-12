
class Supersimple < Formula
  desc "CLI tool for Supersimple configuration management"
  homepage "https://github.com/gosupersimple/supersimple-cli"
  version "2.16.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://assets.supersimple.io/supersimple-cli/releases/v2.16.0/supersimple-arm64-apple-darwin", :using => :nounzip
      sha256 "47e95398dbe05b0f77f65534abdf7fc9940fa1be0834df6f58886cf6c38bc7a7"

      def install
        bin.install "supersimple-arm64-apple-darwin" => "supersimple"
      end
    else
      url "https://assets.supersimple.io/supersimple-cli/releases/v2.16.0/supersimple-x86_64-apple-darwin", :using => :nounzip
      sha256 "d4537fb5ed5ae4f12219ee29a5a0e663562cf2d4edb0ebf64008bdf4f5b6b9cb"

      def install
        bin.install "supersimple-x86_64-apple-darwin" => "supersimple"
      end
    end
  end

  on_linux do
    url "https://assets.supersimple.io/supersimple-cli/releases/v2.16.0/supersimple-x86_64-linux-gnu", :using => :nounzip
    sha256 "62ad2992a1219ab0babe8154d2b22a0cdf8eb26379b68f32f56916f16001aeb5"

    def install
      bin.install "supersimple-x86_64-linux-gnu" => "supersimple"
    end
  end
end

