
class Supersimple < Formula
  desc "CLI tool for Supersimple configuration management"
  homepage "https://github.com/gosupersimple/supersimple-cli"
  version "2.19.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://assets.supersimple.io/supersimple-cli/releases/v2.19.3/supersimple-arm64-apple-darwin", :using => :nounzip
      sha256 "c340f67b6c81c975f7a2ac66d3f8192a721b67b1e287ecd80737535460ad048c"

      def install
        bin.install "supersimple-arm64-apple-darwin" => "supersimple"
      end
    else
      url "https://assets.supersimple.io/supersimple-cli/releases/v2.19.3/supersimple-x86_64-apple-darwin", :using => :nounzip
      sha256 "c66429ee0dffb00ff6d12e0e1f64739278d5e23f4ebbdb9a26a2eed236dd85c7"

      def install
        bin.install "supersimple-x86_64-apple-darwin" => "supersimple"
      end
    end
  end

  on_linux do
    url "https://assets.supersimple.io/supersimple-cli/releases/v2.19.3/supersimple-x86_64-linux-gnu", :using => :nounzip
    sha256 "9438ca16f4ca16aa46664fe71d1863e542be192a2605448396dcf1a001686e9f"

    def install
      bin.install "supersimple-x86_64-linux-gnu" => "supersimple"
    end
  end
end

