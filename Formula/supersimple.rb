class Supersimple < Formula
  desc "CLI tool for Supersimple configuration management"
  homepage "https://github.com/gosupersimple/supersimple-cli"
  version "2.3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/cdn.supersimple.cloud/supersimple-cli/releases/v2.3.0/supersimple-arm64-apple-darwin", :using => :nounzip
      sha256 "b1bf9d943b1583b921155b9d5ec5f33838472b0de2efaba487f3df785fd500f2"

      def install
        bin.install "cdn.supersimple.cloud" => "supersimple"
      end
    else
      url "https://storage.googleapis.com/cdn.supersimple.cloud/supersimple-cli/releases/v2.3.0/supersimple-x86_64-apple-darwin", :using => :nounzip
      sha256 "e536d5ea7896e309b3ddb340970bdabbd11037dc92fa4e872bebe7200209a6ee"

      def install
        bin.install "cdn.supersimple.cloud" => "supersimple"
      end
    end
  end

  on_linux do
    url "https://storage.googleapis.com/cdn.supersimple.cloud/supersimple-cli/releases/v2.3.0/supersimple-x86_64-linux-gnu", :using => :nounzip
    sha256 "160c840114f08b721fe510da2a9246107f1a90a0842e94b65774987075297a28"

    def install
      bin.install "cdn.supersimple.cloud" => "supersimple"
    end
  end
end
