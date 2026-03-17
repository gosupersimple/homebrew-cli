
class Supersimple < Formula
  desc "CLI tool for Supersimple configuration management"
  homepage "https://github.com/gosupersimple/supersimple-cli"
  version "2.19.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://assets.supersimple.io/supersimple-cli/releases/v2.19.1/supersimple-arm64-apple-darwin", :using => :nounzip
      sha256 "49d11f55c722fc446ecd80d20031f0104d66e0e3f97f8e6d9910181d2865f98c"

      def install
        bin.install "supersimple-arm64-apple-darwin" => "supersimple"
      end
    else
      url "https://assets.supersimple.io/supersimple-cli/releases/v2.19.1/supersimple-x86_64-apple-darwin", :using => :nounzip
      sha256 "61ffe112fcc3a3526885a5e6ed5537ce5e53774a899e6164056240d80f7e7d64"

      def install
        bin.install "supersimple-x86_64-apple-darwin" => "supersimple"
      end
    end
  end

  on_linux do
    url "https://assets.supersimple.io/supersimple-cli/releases/v2.19.1/supersimple-x86_64-linux-gnu", :using => :nounzip
    sha256 "e591028ec48509f021a8c81a7193552a0ab86cfd2f82d36510d8f2fa91f5441b"

    def install
      bin.install "supersimple-x86_64-linux-gnu" => "supersimple"
    end
  end
end

