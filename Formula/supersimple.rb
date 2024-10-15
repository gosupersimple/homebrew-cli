
class Supersimple < Formula
  desc "CLI tool for Supersimple configuration management"
  homepage "https://github.com/gosupersimple/supersimple-cli"
  version "2.7.9"

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/cdn.supersimple.cloud/supersimple-cli/releases/v2.7.9/supersimple-arm64-apple-darwin", :using => :nounzip
      sha256 "9aa70df2ed5554e57568fe8792222deab275999793b8f1464b8b5b0b88b24219"

      def install
        bin.install "cdn.supersimple.cloud" => "supersimple"
      end
    else
      url "https://storage.googleapis.com/cdn.supersimple.cloud/supersimple-cli/releases/v2.7.9/supersimple-x86_64-apple-darwin", :using => :nounzip
      sha256 "627457d31eae70bee961f821f2b035c103580240a5d99f31f194c0be7e345c17"

      def install
        bin.install "cdn.supersimple.cloud" => "supersimple"
      end
    end
  end

  on_linux do
    url "https://storage.googleapis.com/cdn.supersimple.cloud/supersimple-cli/releases/v2.7.9/supersimple-x86_64-linux-gnu", :using => :nounzip
    sha256 "2ff3c3a9130afa210f276163cc0c784ab3ba8570762e2b55a57220f2199b6649"

    def install
      bin.install "cdn.supersimple.cloud" => "supersimple"
    end
  end
end

