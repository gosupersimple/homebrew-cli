
class Supersimple < Formula
  desc "CLI tool for Supersimple configuration management"
  homepage "https://github.com/gosupersimple/supersimple-cli"
  version "2.11.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://assets.supersimple.io/supersimple-cli/releases/v2.11.0/supersimple-arm64-apple-darwin", :using => :nounzip
      sha256 "07c96af18f47eca27936b145121f4e350b0a593a32d010d9b280278cf0d6d1f9"

      def install
        bin.install "supersimple-arm64-apple-darwin" => "supersimple"
      end
    else
      url "https://assets.supersimple.io/supersimple-cli/releases/v2.11.0/supersimple-x86_64-apple-darwin", :using => :nounzip
      sha256 "a4c287e063ea30b7877fe4ac1220c8677bf8de6e777f31a3f6da9be92d732def"

      def install
        bin.install "supersimple-x86_64-apple-darwin" => "supersimple"
      end
    end
  end

  on_linux do
    url "https://assets.supersimple.io/supersimple-cli/releases/v2.11.0/supersimple-x86_64-linux-gnu", :using => :nounzip
    sha256 "58ce629fb959144b4209ceece2b53557cf278acfb7a546735756d06b7b59bd0f"

    def install
      bin.install "supersimple-x86_64-linux-gnu" => "supersimple"
    end
  end
end

