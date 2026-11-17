
class Supersimple < Formula
  desc "CLI tool for Supersimple configuration management"
  homepage "https://github.com/gosupersimple/supersimple-cli"
  version "2.32.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://assets.supersimple.io/supersimple-cli/releases/v2.32.0/supersimple-arm64-apple-darwin", :using => :nounzip
      sha256 "8060e8efe004218016485d466cb228cee85fbaa4f1c70cbc2e1c0bdde8932720"

      def install
        bin.install "supersimple-arm64-apple-darwin" => "supersimple"
      end
    else
      url "https://assets.supersimple.io/supersimple-cli/releases/v2.32.0/supersimple-x86_64-apple-darwin", :using => :nounzip
      sha256 "7e7a681406655e41d6b27a254a84e5925945fe007125ee5ab6dcdce12055656b"

      def install
        bin.install "supersimple-x86_64-apple-darwin" => "supersimple"
      end
    end
  end

  on_linux do
    url "https://assets.supersimple.io/supersimple-cli/releases/v2.32.0/supersimple-x86_64-linux-gnu", :using => :nounzip
    sha256 "251913c3d79d77eccbad870660607f7fe297f99296edc2249935f29a0a62276d"

    def install
      bin.install "supersimple-x86_64-linux-gnu" => "supersimple"
    end
  end
end

