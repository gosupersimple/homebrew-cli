
class Supersimple < Formula
  desc "CLI tool for Supersimple configuration management"
  homepage "https://github.com/gosupersimple/supersimple-cli"
  version "2.28.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://assets.supersimple.io/supersimple-cli/releases/v2.28.0/supersimple-arm64-apple-darwin", :using => :nounzip
      sha256 "186d7ffca044db9447d20d1bbae4be38360c35955d97789259e85605c847a870"

      def install
        bin.install "supersimple-arm64-apple-darwin" => "supersimple"
      end
    else
      url "https://assets.supersimple.io/supersimple-cli/releases/v2.28.0/supersimple-x86_64-apple-darwin", :using => :nounzip
      sha256 "37fdf0101eab78d6be35a9df50f599f0b579f84ba88cc0d0a383a4ec68fa81a2"

      def install
        bin.install "supersimple-x86_64-apple-darwin" => "supersimple"
      end
    end
  end

  on_linux do
    url "https://assets.supersimple.io/supersimple-cli/releases/v2.28.0/supersimple-x86_64-linux-gnu", :using => :nounzip
    sha256 "aaf6902b8ba0ad9a0f08c5de5cbdd30bc03cd0a16a0239049803ab0ad89fe37a"

    def install
      bin.install "supersimple-x86_64-linux-gnu" => "supersimple"
    end
  end
end

