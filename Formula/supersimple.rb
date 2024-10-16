
class Supersimple < Formula
  desc "CLI tool for Supersimple configuration management"
  homepage "https://github.com/gosupersimple/supersimple-cli"
  version "2.8.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://assets.supersimple.io/supersimple-cli/releases/v2.8.0/supersimple-arm64-apple-darwin", :using => :nounzip
      sha256 "9b47e3e3198dae1448b951d1ef58ced4dd94d07eb75c97ba2387e3a055207ad4"

      def install
        bin.install "supersimple-arm64-apple-darwin" => "supersimple"
      end
    else
      url "https://assets.supersimple.io/supersimple-cli/releases/v2.8.0/supersimple-x86_64-apple-darwin", :using => :nounzip
      sha256 "70b783145a43de6dad5c9c445e118d80b2201fb9af8c44416329ef00dadae7d1"

      def install
        bin.install "supersimple-x86_64-apple-darwin" => "supersimple"
      end
    end
  end

  on_linux do
    url "https://assets.supersimple.io/supersimple-cli/releases/v2.8.0/supersimple-x86_64-linux-gnu", :using => :nounzip
    sha256 "1275e58c9c2ec0548b4affccb7af24db89ac97d1fa0cdcb458c83d92926fb584"

    def install
      bin.install "supersimple-x86_64-linux-gnu" => "supersimple"
    end
  end
end

