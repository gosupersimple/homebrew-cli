
class Supersimple < Formula
  desc "CLI tool for Supersimple configuration management"
  homepage "https://github.com/gosupersimple/supersimple-cli"
  version "2.6.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/cdn.supersimple.cloud/supersimple-cli/releases/v2.6.2/supersimple-arm64-apple-darwin", :using => :nounzip
      sha256 "53456de5438fa2a55220f9ccd0351f7c8f496d7e96a9c9546a83895b6279c67c"

      def install
        bin.install "cdn.supersimple.cloud" => "supersimple"
      end
    else
      url "https://storage.googleapis.com/cdn.supersimple.cloud/supersimple-cli/releases/v2.6.2/supersimple-x86_64-apple-darwin", :using => :nounzip
      sha256 "91e0307c19528c1e40065b3c0b382e796ffc30a1d3d29bbb958ab711828fb3c7"

      def install
        bin.install "cdn.supersimple.cloud" => "supersimple"
      end
    end
  end

  on_linux do
    url "https://storage.googleapis.com/cdn.supersimple.cloud/supersimple-cli/releases/v2.6.2/supersimple-x86_64-linux-gnu", :using => :nounzip
    sha256 "b45c9a6664fbecedf43a59f93c6ce2581c42fbdead55092ec6a747c90b858511"

    def install
      bin.install "cdn.supersimple.cloud" => "supersimple"
    end
  end
end

