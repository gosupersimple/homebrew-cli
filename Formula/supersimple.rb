class Supersimple < Formula
  desc "CLI tool for Supersimple configuration management"
  homepage "https://github.com/gosupersimple/supersimple-cli"
  version "2.3.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/cdn.supersimple.cloud/supersimple-cli/releases/v2.3.2/supersimple-arm64-apple-darwin", :using => :nounzip
      sha256 "3bb5b8a011b09392241077c00e76de6cc70f8aa548cab122fa03efaac15c1258"

      def install
        bin.install "cdn.supersimple.cloud" => "supersimple"
      end
    else
      url "https://storage.googleapis.com/cdn.supersimple.cloud/supersimple-cli/releases/v2.3.2/supersimple-x86_64-apple-darwin", :using => :nounzip
      sha256 "235d8184d2d294e3965cfb6127c7a413012c772bc29c0adbf6f3adad3eef7e49"

      def install
        bin.install "cdn.supersimple.cloud" => "supersimple"
      end
    end
  end

  on_linux do
    url "https://storage.googleapis.com/cdn.supersimple.cloud/supersimple-cli/releases/v2.3.2/supersimple-x86_64-linux-gnu", :using => :nounzip
    sha256 "5d81a4fcf0cda28c1f8615d128ef9e42c63a0772070429086e99d084e6737986"

    def install
      bin.install "cdn.supersimple.cloud" => "supersimple"
    end
  end
end
