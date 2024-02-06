
class Supersimple < Formula
  desc "CLI tool for Supersimple configuration management"
  homepage "https://github.com/gosupersimple/supersimple-cli"
  version "2.6.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/cdn.supersimple.cloud/supersimple-cli/releases/v2.6.0/supersimple-arm64-apple-darwin", :using => :nounzip
      sha256 "06f393c6275f104902a100032c34bc04b06ea69935d382c483cfe53d4b73a1a1"

      def install
        bin.install "cdn.supersimple.cloud" => "supersimple"
      end
    else
      url "https://storage.googleapis.com/cdn.supersimple.cloud/supersimple-cli/releases/v2.6.0/supersimple-x86_64-apple-darwin", :using => :nounzip
      sha256 "914772320303d963d5c6e1e277d5b5639ea9699890f712e6994dddb5afced776"

      def install
        bin.install "cdn.supersimple.cloud" => "supersimple"
      end
    end
  end

  on_linux do
    url "https://storage.googleapis.com/cdn.supersimple.cloud/supersimple-cli/releases/v2.6.0/supersimple-x86_64-linux-gnu", :using => :nounzip
    sha256 "874a8f3fd2760ea8c246a430874a743d8acf7d64f998f1bcc88df97370888093"

    def install
      bin.install "cdn.supersimple.cloud" => "supersimple"
    end
  end
end

