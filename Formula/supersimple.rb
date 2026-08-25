
class Supersimple < Formula
  desc "CLI tool for Supersimple configuration management"
  homepage "https://github.com/gosupersimple/supersimple-cli"
  version "2.24.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://assets.supersimple.io/supersimple-cli/releases/v2.24.0/supersimple-arm64-apple-darwin", :using => :nounzip
      sha256 "aafa5c62b8fcecad6725910cf10c1cfb4e2d7ca538aaf0408263f1ebc7057aac"

      def install
        bin.install "supersimple-arm64-apple-darwin" => "supersimple"
      end
    else
      url "https://assets.supersimple.io/supersimple-cli/releases/v2.24.0/supersimple-x86_64-apple-darwin", :using => :nounzip
      sha256 "97b2bd4259a9d1bad082096cd0f60162093d177ade00deb78744de7499f0b8a9"

      def install
        bin.install "supersimple-x86_64-apple-darwin" => "supersimple"
      end
    end
  end

  on_linux do
    url "https://assets.supersimple.io/supersimple-cli/releases/v2.24.0/supersimple-x86_64-linux-gnu", :using => :nounzip
    sha256 "78cc330bbc6c3b31eba6cf865a42ed90c21a5fc841a31e045cffadb7a18e5a8c"

    def install
      bin.install "supersimple-x86_64-linux-gnu" => "supersimple"
    end
  end
end

