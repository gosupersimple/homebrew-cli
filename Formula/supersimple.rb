
class Supersimple < Formula
  desc "CLI tool for Supersimple configuration management"
  homepage "https://github.com/gosupersimple/supersimple-cli"
  version "2.32.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://assets.supersimple.io/supersimple-cli/releases/v2.32.1/supersimple-arm64-apple-darwin", :using => :nounzip
      sha256 "1bbfde67e13f4518461729c3f437a64f76b7f9d89b8b8246c61c4d55229038c2"

      def install
        bin.install "supersimple-arm64-apple-darwin" => "supersimple"
      end
    else
      url "https://assets.supersimple.io/supersimple-cli/releases/v2.32.1/supersimple-x86_64-apple-darwin", :using => :nounzip
      sha256 "ffb8111b6d35367b6307895c7f9d3f334ee2ce6c93f53e6dd5a235c61c71a34d"

      def install
        bin.install "supersimple-x86_64-apple-darwin" => "supersimple"
      end
    end
  end

  on_linux do
    url "https://assets.supersimple.io/supersimple-cli/releases/v2.32.1/supersimple-x86_64-linux-gnu", :using => :nounzip
    sha256 "8a80b7bc597dbf5e3bf5876f8425b823749a7e28dd3e17435fc34cb784717e2b"

    def install
      bin.install "supersimple-x86_64-linux-gnu" => "supersimple"
    end
  end
end

