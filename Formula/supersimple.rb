
class Supersimple < Formula
  desc "CLI tool for Supersimple configuration management"
  homepage "https://github.com/gosupersimple/supersimple-cli"
  version "2.20.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://assets.supersimple.io/supersimple-cli/releases/v2.20.0/supersimple-arm64-apple-darwin", :using => :nounzip
      sha256 "30e2c11bc4fa3effe52a907f1dce42bd6c5114649a4f9705dcd8a9a8cf8a8cb4"

      def install
        bin.install "supersimple-arm64-apple-darwin" => "supersimple"
      end
    else
      url "https://assets.supersimple.io/supersimple-cli/releases/v2.20.0/supersimple-x86_64-apple-darwin", :using => :nounzip
      sha256 "d5a65c8df429be6e5e50b54f8b863b028cf12665068c43f3e3e5ca0a87bf453b"

      def install
        bin.install "supersimple-x86_64-apple-darwin" => "supersimple"
      end
    end
  end

  on_linux do
    url "https://assets.supersimple.io/supersimple-cli/releases/v2.20.0/supersimple-x86_64-linux-gnu", :using => :nounzip
    sha256 "5e6520ef2a935fc2cb830a38f7b92900017ad1ed5e77040bb16411d67c866917"

    def install
      bin.install "supersimple-x86_64-linux-gnu" => "supersimple"
    end
  end
end

