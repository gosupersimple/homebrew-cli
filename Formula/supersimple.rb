
class Supersimple < Formula
  desc "CLI tool for Supersimple configuration management"
  homepage "https://github.com/gosupersimple/supersimple-cli"
  version "2.1.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/cdn.supersimple.cloud/supersimple-cli/releases/v2.1.2/supersimple-arm64-apple-darwin", :using => :nounzip
      sha256 "8ad577e384f63629d2bcc206ca488c0878b21cd1890cdad862b4ea29bf33de7e"

      def install
        bin.install "cdn.supersimple.cloud" => "supersimple"
      end
    else
      url "https://storage.googleapis.com/cdn.supersimple.cloud/supersimple-cli/releases/v2.1.2/supersimple-x86_64-apple-darwin", :using => :nounzip
      sha256 "85ce9e89b4766270f01efffb078902815edc86dbe96795f365eaddc694110950"

      def install
        bin.install "cdn.supersimple.cloud" => "supersimple"
      end
    end
  end

  on_linux do
    url "https://storage.googleapis.com/cdn.supersimple.cloud/supersimple-cli/releases/v2.1.2/supersimple-x86_64-linux-gnu", :using => :nounzip
    sha256 "191660efbb743972756c979f671c31760da30def3bb696d5f203eb5d705894ba"

    def install
      bin.install "cdn.supersimple.cloud" => "supersimple"
    end
  end
end

