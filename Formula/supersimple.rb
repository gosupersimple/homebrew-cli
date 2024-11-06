
class Supersimple < Formula
  desc "CLI tool for Supersimple configuration management"
  homepage "https://github.com/gosupersimple/supersimple-cli"
  version "2.9.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://assets.supersimple.io/supersimple-cli/releases/v2.9.1/supersimple-arm64-apple-darwin", :using => :nounzip
      sha256 "be21ec9cd4364e0ed5bb82d7a060e59abce67c9e06e5500e3a5a847d43783ca3"

      def install
        bin.install "supersimple-arm64-apple-darwin" => "supersimple"
      end
    else
      url "https://assets.supersimple.io/supersimple-cli/releases/v2.9.1/supersimple-x86_64-apple-darwin", :using => :nounzip
      sha256 "4b494014452c79364d059ca4cf9362aa356014879eaa2c7750e5d108d33bc530"

      def install
        bin.install "supersimple-x86_64-apple-darwin" => "supersimple"
      end
    end
  end

  on_linux do
    url "https://assets.supersimple.io/supersimple-cli/releases/v2.9.1/supersimple-x86_64-linux-gnu", :using => :nounzip
    sha256 "b41ca9e928294e52e097ed593d5f3ea58c33c3c7fdf7bf729269ef260e60c823"

    def install
      bin.install "supersimple-x86_64-linux-gnu" => "supersimple"
    end
  end
end

