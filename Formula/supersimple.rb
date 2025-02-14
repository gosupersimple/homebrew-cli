
class Supersimple < Formula
  desc "CLI tool for Supersimple configuration management"
  homepage "https://github.com/gosupersimple/supersimple-cli"
  version "2.9.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://assets.supersimple.io/supersimple-cli/releases/v2.9.4/supersimple-arm64-apple-darwin", :using => :nounzip
      sha256 "2a1acbe79bd424586d00be501a2b0d86c9862812ab9b86e702ac337eb6ff019b"

      def install
        bin.install "supersimple-arm64-apple-darwin" => "supersimple"
      end
    else
      url "https://assets.supersimple.io/supersimple-cli/releases/v2.9.4/supersimple-x86_64-apple-darwin", :using => :nounzip
      sha256 "189bca9733affb07521c7536ebb25b06d4e7446d8cfd6b389e7a851fa94b9682"

      def install
        bin.install "supersimple-x86_64-apple-darwin" => "supersimple"
      end
    end
  end

  on_linux do
    url "https://assets.supersimple.io/supersimple-cli/releases/v2.9.4/supersimple-x86_64-linux-gnu", :using => :nounzip
    sha256 "f0a6fdd4b1f290ef4606879fa052b5c3654c41cce0bd07809ab08b059d81da87"

    def install
      bin.install "supersimple-x86_64-linux-gnu" => "supersimple"
    end
  end
end

