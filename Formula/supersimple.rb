
class Supersimple < Formula
  desc "CLI tool for Supersimple configuration management"
  homepage "https://github.com/gosupersimple/supersimple-cli"
  version "2.21.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://assets.supersimple.io/supersimple-cli/releases/v2.21.0/supersimple-arm64-apple-darwin", :using => :nounzip
      sha256 "132a0777499606a8e0498f91c2a72038809a0e4e99c79fa5dc54ef2f68729d4e"

      def install
        bin.install "supersimple-arm64-apple-darwin" => "supersimple"
      end
    else
      url "https://assets.supersimple.io/supersimple-cli/releases/v2.21.0/supersimple-x86_64-apple-darwin", :using => :nounzip
      sha256 "6228cae3aaf2ad48d681b350b9dce47b6a9bf54ff5f509d31c9761867b4acd75"

      def install
        bin.install "supersimple-x86_64-apple-darwin" => "supersimple"
      end
    end
  end

  on_linux do
    url "https://assets.supersimple.io/supersimple-cli/releases/v2.21.0/supersimple-x86_64-linux-gnu", :using => :nounzip
    sha256 "15a6ae068997c67c174848133b5d754acd59d202dfdcc9151d724ebdcbcb05b7"

    def install
      bin.install "supersimple-x86_64-linux-gnu" => "supersimple"
    end
  end
end

