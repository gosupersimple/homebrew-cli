class Supersimple < Formula
  desc "CLI tool for Supersimple configuration management"
  homepage "https://github.com/gosupersimple/supersimple-cli"
  version "2.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/cdn.supersimple.cloud/supersimple-cli/releases/v#{version}/supersimple-arm64-apple-darwin", :using => :nounzip
      sha256 "c53ef4d2d7dce36dfbc59ae61cf38fb43ca7b32e28d0db59696f7f17ae01ab8e"

      def install
        bin.install "cdn.supersimple.cloud" => "supersimple"
      end
    else
      url "https://storage.googleapis.com/cdn.supersimple.cloud/supersimple-cli/releases/v#{version}/supersimple-x86_64-apple-darwin", :using => :nounzip
      sha256 "331a12ef98c6d3f2cfb4c17843745dcd4bea97c392120ce65d96d026ddaf31af"

      def install
        bin.install "cdn.supersimple.cloud" => "supersimple"
      end
    end
  end

  on_linux do
    url "https://github.com/gosupersimple/supersimple-cli/releases/download/releases/v#{version}/supersimple-x86_64-linux-gnu", :using => :nounzip
    sha256 "c3b24942053d8131bbb1ed4525cd148e6767a9468626891002236697a57a1668"

    def install
      bin.install "cdn.supersimple.cloud" => "supersimple"
    end
  end
end
