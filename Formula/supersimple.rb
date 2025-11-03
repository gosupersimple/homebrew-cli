
class Supersimple < Formula
  desc "CLI tool for Supersimple configuration management"
  homepage "https://github.com/gosupersimple/supersimple-cli"
  version "2.13.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://assets.supersimple.io/supersimple-cli/releases/v2.13.1/supersimple-arm64-apple-darwin", :using => :nounzip
      sha256 "762a0054af582a7a894e1107fe80857768fdfb9a2d188f54ad9c6a5dfa7238c5"

      def install
        bin.install "supersimple-arm64-apple-darwin" => "supersimple"
      end
    else
      url "https://assets.supersimple.io/supersimple-cli/releases/v2.13.1/supersimple-x86_64-apple-darwin", :using => :nounzip
      sha256 "a9f9a15ae5b3db583c28352b8927bffd7d05ffafcdbba68c48d79e0525f2f533"

      def install
        bin.install "supersimple-x86_64-apple-darwin" => "supersimple"
      end
    end
  end

  on_linux do
    url "https://assets.supersimple.io/supersimple-cli/releases/v2.13.1/supersimple-x86_64-linux-gnu", :using => :nounzip
    sha256 "b93fe84593b41976c4ccecb240075727dd6b21609982a46e214bc6252c4610a9"

    def install
      bin.install "supersimple-x86_64-linux-gnu" => "supersimple"
    end
  end
end

