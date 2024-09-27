
class Supersimple < Formula
  desc "CLI tool for Supersimple configuration management"
  homepage "https://github.com/gosupersimple/supersimple-cli"
  version "2.7.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/cdn.supersimple.cloud/supersimple-cli/releases/v2.7.4/supersimple-arm64-apple-darwin", :using => :nounzip
      sha256 "7ad2e1ef70d48a5c31bf0b0749d01d38efd466d7e36b218cedd6e91dc866635c"

      def install
        bin.install "cdn.supersimple.cloud" => "supersimple"
      end
    else
      url "https://storage.googleapis.com/cdn.supersimple.cloud/supersimple-cli/releases/v2.7.4/supersimple-x86_64-apple-darwin", :using => :nounzip
      sha256 "fb037a7fa4b6fe2cb70596ed61332e604fff0dd6c33d6778efdd1f95b8315ccc"

      def install
        bin.install "cdn.supersimple.cloud" => "supersimple"
      end
    end
  end

  on_linux do
    url "https://storage.googleapis.com/cdn.supersimple.cloud/supersimple-cli/releases/v2.7.4/supersimple-x86_64-linux-gnu", :using => :nounzip
    sha256 "c67899b318ab0ddd2ed954e1735aac6d9c5b1b0b48c390dd7d58d1c9d2519ae1"

    def install
      bin.install "cdn.supersimple.cloud" => "supersimple"
    end
  end
end

