
class Supersimple < Formula
  desc "CLI tool for Supersimple configuration management"
  homepage "https://github.com/gosupersimple/supersimple-cli"
  version "2.7.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/cdn.supersimple.cloud/supersimple-cli/releases/v2.7.5/supersimple-arm64-apple-darwin", :using => :nounzip
      sha256 "0e6a0f68ab401540ec2f74348b197a565b2f33ecf57f40ee7367eb7e0e7a8507"

      def install
        bin.install "cdn.supersimple.cloud" => "supersimple"
      end
    else
      url "https://storage.googleapis.com/cdn.supersimple.cloud/supersimple-cli/releases/v2.7.5/supersimple-x86_64-apple-darwin", :using => :nounzip
      sha256 "070501b498fca33b40be2bfaf17388ac71b1e8938188e44eb30b21873424fa86"

      def install
        bin.install "cdn.supersimple.cloud" => "supersimple"
      end
    end
  end

  on_linux do
    url "https://storage.googleapis.com/cdn.supersimple.cloud/supersimple-cli/releases/v2.7.5/supersimple-x86_64-linux-gnu", :using => :nounzip
    sha256 "36fea3ee239ce6375c938121603eb48c96bd37b050d850bcf3d20d65bc01af24"

    def install
      bin.install "cdn.supersimple.cloud" => "supersimple"
    end
  end
end

