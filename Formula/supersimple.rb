
class Supersimple < Formula
  desc "CLI tool for Supersimple configuration management"
  homepage "https://github.com/gosupersimple/supersimple-cli"
  version "2.7.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/cdn.supersimple.cloud/supersimple-cli/releases/v2.7.3/supersimple-arm64-apple-darwin", :using => :nounzip
      sha256 "14a9d095696719e574d2467ee021bcc95083dbf8d6f60ca641b0f137b5ee1c7b"

      def install
        bin.install "cdn.supersimple.cloud" => "supersimple"
      end
    else
      url "https://storage.googleapis.com/cdn.supersimple.cloud/supersimple-cli/releases/v2.7.3/supersimple-x86_64-apple-darwin", :using => :nounzip
      sha256 "bac8c7fb0447cfaca623cfc1624c9f326c4b4ef8ef49fc5cb37e3b37e0db68d8"

      def install
        bin.install "cdn.supersimple.cloud" => "supersimple"
      end
    end
  end

  on_linux do
    url "https://storage.googleapis.com/cdn.supersimple.cloud/supersimple-cli/releases/v2.7.3/supersimple-x86_64-linux-gnu", :using => :nounzip
    sha256 "0888f3d9be941cd2fe57d0b1c7a0d7a78a483aa13f8c279d0351d11b70216708"

    def install
      bin.install "cdn.supersimple.cloud" => "supersimple"
    end
  end
end

