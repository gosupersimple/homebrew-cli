
class Supersimple < Formula
  desc "CLI tool for Supersimple configuration management"
  homepage "https://github.com/gosupersimple/supersimple-cli"
  version "2.18.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://assets.supersimple.io/supersimple-cli/releases/v2.18.0/supersimple-arm64-apple-darwin", :using => :nounzip
      sha256 "46f34c9c4d79b219995c2e5b946ab1fe17b1b2e640cca755f7ff0b0cbe5f5489"

      def install
        bin.install "supersimple-arm64-apple-darwin" => "supersimple"
      end
    else
      url "https://assets.supersimple.io/supersimple-cli/releases/v2.18.0/supersimple-x86_64-apple-darwin", :using => :nounzip
      sha256 "a37e8ad62cd232b06082846d19b20249a894af0836f5aacfab2a824c2d9cdb7b"

      def install
        bin.install "supersimple-x86_64-apple-darwin" => "supersimple"
      end
    end
  end

  on_linux do
    url "https://assets.supersimple.io/supersimple-cli/releases/v2.18.0/supersimple-x86_64-linux-gnu", :using => :nounzip
    sha256 "e86eb71ab15fd2b40cf96b2be5e1eb2a32f1ef7dcbb530dac17a599691e632f4"

    def install
      bin.install "supersimple-x86_64-linux-gnu" => "supersimple"
    end
  end
end

