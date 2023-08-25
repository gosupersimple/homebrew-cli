
class Supersimple < Formula
  desc "CLI tool for Supersimple configuration management"
  homepage "https://github.com/gosupersimple/supersimple-cli"
  version "2.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/cdn.supersimple.cloud/supersimple-cli/releases/v2.1.0/supersimple-arm64-apple-darwin", :using => :nounzip
      sha256 "3e13b4a2246c42ce2318e3c9339e8a724339ba40ead046670d3ea605dd023810"

      def install
        bin.install "cdn.supersimple.cloud" => "supersimple"
      end
    else
      url "https://storage.googleapis.com/cdn.supersimple.cloud/supersimple-cli/releases/v2.1.0/supersimple-x86_64-apple-darwin", :using => :nounzip
      sha256 "9d32108218b38b17515fd46382ba0cfbf1c7377a2526dfdfc7526ca83951a812"

      def install
        bin.install "cdn.supersimple.cloud" => "supersimple"
      end
    end
  end

  on_linux do
    url "https://storage.googleapis.com/cdn.supersimple.cloud/supersimple-cli/releases/v2.1.0/supersimple-x86_64-linux-gnu", :using => :nounzip
    sha256 "243cf82448c292702389db2de675fe8c807901359bf1ecc7169a65c4c6f62160"

    def install
      bin.install "cdn.supersimple.cloud" => "supersimple"
    end
  end
end

