
class Supersimple < Formula
  desc "CLI tool for Supersimple configuration management"
  homepage "https://github.com/gosupersimple/supersimple-cli"
  version "2.25.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://assets.supersimple.io/supersimple-cli/releases/v2.25.0/supersimple-arm64-apple-darwin", :using => :nounzip
      sha256 "df85b5edef6d8f0d3e3d16e0b510338b7ddf81d54bc49c971692e66c10bb8fd5"

      def install
        bin.install "supersimple-arm64-apple-darwin" => "supersimple"
      end
    else
      url "https://assets.supersimple.io/supersimple-cli/releases/v2.25.0/supersimple-x86_64-apple-darwin", :using => :nounzip
      sha256 "1978cb7bd4a174a49e1212ea162811a3677359ec450101a8ed1b2761a10020af"

      def install
        bin.install "supersimple-x86_64-apple-darwin" => "supersimple"
      end
    end
  end

  on_linux do
    url "https://assets.supersimple.io/supersimple-cli/releases/v2.25.0/supersimple-x86_64-linux-gnu", :using => :nounzip
    sha256 "cc3cf8d1d459c0f069655e192a2ad9037563ff41fbfe848c7fa403a4d5d4ed5b"

    def install
      bin.install "supersimple-x86_64-linux-gnu" => "supersimple"
    end
  end
end

