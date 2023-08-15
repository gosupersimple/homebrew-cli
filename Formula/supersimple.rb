
class Supersimple < Formula
  desc "CLI tool for Supersimple configuration management"
  homepage "https://github.com/gosupersimple/supersimple-cli"
  version "2.0.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/cdn.supersimple.cloud/supersimple-cli/releases/v2.0.2/supersimple-arm64-apple-darwin", :using => :nounzip
      sha256 "373b872cc2ae6ea53618f464a8365001ec80f90b5daa158a894c851f31966fa5"

      def install
        bin.install "cdn.supersimple.cloud" => "supersimple"
      end
    else
      url "https://storage.googleapis.com/cdn.supersimple.cloud/supersimple-cli/releases/v2.0.2/supersimple-x86_64-apple-darwin", :using => :nounzip
      sha256 "14975c0aff4dd02f38b8267dfe5ce2b50166b732a2f586a0cbd446b8c2f8e33f"

      def install
        bin.install "cdn.supersimple.cloud" => "supersimple"
      end
    end
  end

  on_linux do
    url "https://storage.googleapis.com/cdn.supersimple.cloud/supersimple-cli/releases/v2.0.2/supersimple-x86_64-linux-gnu", :using => :nounzip
    sha256 "feb9864225ecbc3240c67d1cf892054cf8324202fddfef836653942165ab682a"

    def install
      bin.install "cdn.supersimple.cloud" => "supersimple"
    end
  end
end

