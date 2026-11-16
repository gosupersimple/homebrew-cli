
class Supersimple < Formula
  desc "CLI tool for Supersimple configuration management"
  homepage "https://github.com/gosupersimple/supersimple-cli"
  version "2.31.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://assets.supersimple.io/supersimple-cli/releases/v2.31.1/supersimple-arm64-apple-darwin", :using => :nounzip
      sha256 "9b5af778f20aed6470c4487424c861f70b12f26018740538144bee39a8d7fec4"

      def install
        bin.install "supersimple-arm64-apple-darwin" => "supersimple"
      end
    else
      url "https://assets.supersimple.io/supersimple-cli/releases/v2.31.1/supersimple-x86_64-apple-darwin", :using => :nounzip
      sha256 "f5ff4b6adaf072ddd637f3b7cb347e3fceb2ada9e320242a99af8dd527a4c31e"

      def install
        bin.install "supersimple-x86_64-apple-darwin" => "supersimple"
      end
    end
  end

  on_linux do
    url "https://assets.supersimple.io/supersimple-cli/releases/v2.31.1/supersimple-x86_64-linux-gnu", :using => :nounzip
    sha256 "83909a1fe4af38fbf2bb5acbe00693af64f9486f3f104e4df069b1b591d95161"

    def install
      bin.install "supersimple-x86_64-linux-gnu" => "supersimple"
    end
  end
end

