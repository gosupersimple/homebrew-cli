class Supersimple < Formula
  desc "CLI tool for Supersimple configuration management"
  homepage "https://github.com/gosupersimple/supersimple-cli"
  version "2.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/cdn.supersimple.cloud/supersimple-cli/releases/v2.2.0/supersimple-arm64-apple-darwin", :using => :nounzip
      sha256 "54f00265f5c742bc57051f7adb5ec05be0d58995c296cc000bb561bcb30d3cd3"

      def install
        bin.install "cdn.supersimple.cloud" => "supersimple"
      end
    else
      url "https://storage.googleapis.com/cdn.supersimple.cloud/supersimple-cli/releases/v2.2.0/supersimple-x86_64-apple-darwin", :using => :nounzip
      sha256 "b30f15457b47fab88182c774c761846d4d7b20b440a5124613da4cb5643f5776"

      def install
        bin.install "cdn.supersimple.cloud" => "supersimple"
      end
    end
  end

  on_linux do
    url "https://storage.googleapis.com/cdn.supersimple.cloud/supersimple-cli/releases/v2.2.0/supersimple-x86_64-linux-gnu", :using => :nounzip
    sha256 "decedf58407a17b2daa94671e3968ad64841a7770dc34899d651fc848b572677"

    def install
      bin.install "cdn.supersimple.cloud" => "supersimple"
    end
  end
end
