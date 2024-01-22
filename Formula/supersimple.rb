
class Supersimple < Formula
  desc "CLI tool for Supersimple configuration management"
  homepage "https://github.com/gosupersimple/supersimple-cli"
  version "2.4.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/cdn.supersimple.cloud/supersimple-cli/releases/v2.4.0/supersimple-arm64-apple-darwin", :using => :nounzip
      sha256 "b203c5cfc9f0d118505307fcf701ea6415ebe7f34808d77d1486f1560987f114"

      def install
        bin.install "cdn.supersimple.cloud" => "supersimple"
      end
    else
      url "https://storage.googleapis.com/cdn.supersimple.cloud/supersimple-cli/releases/v2.4.0/supersimple-x86_64-apple-darwin", :using => :nounzip
      sha256 "1d344658771a0d33feff8678ff9db13cc59c3e49e55ce1107672e7d8d8ed5b56"

      def install
        bin.install "cdn.supersimple.cloud" => "supersimple"
      end
    end
  end

  on_linux do
    url "https://storage.googleapis.com/cdn.supersimple.cloud/supersimple-cli/releases/v2.4.0/supersimple-x86_64-linux-gnu", :using => :nounzip
    sha256 "ac0177bbefad4443b0f8a217e575c18cb54e2db81a171ca8aacc62a40466eb44"

    def install
      bin.install "cdn.supersimple.cloud" => "supersimple"
    end
  end
end

