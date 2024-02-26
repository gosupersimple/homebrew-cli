
class Supersimple < Formula
  desc "CLI tool for Supersimple configuration management"
  homepage "https://github.com/gosupersimple/supersimple-cli"
  version "2.7.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/cdn.supersimple.cloud/supersimple-cli/releases/v2.7.0/supersimple-arm64-apple-darwin", :using => :nounzip
      sha256 "e49bec1ee62a54c2f4b993383ef2d093b87175b3ea9343b23fb56342aeff5151"

      def install
        bin.install "cdn.supersimple.cloud" => "supersimple"
      end
    else
      url "https://storage.googleapis.com/cdn.supersimple.cloud/supersimple-cli/releases/v2.7.0/supersimple-x86_64-apple-darwin", :using => :nounzip
      sha256 "79f173763eaa645973ad2c15d718ce9ea669268bbedfddcfc3cab1527ef714d6"

      def install
        bin.install "cdn.supersimple.cloud" => "supersimple"
      end
    end
  end

  on_linux do
    url "https://storage.googleapis.com/cdn.supersimple.cloud/supersimple-cli/releases/v2.7.0/supersimple-x86_64-linux-gnu", :using => :nounzip
    sha256 "9b920a0fd72c65a8e0095fc457527e01849bb9f65985138ab709aeb68325cfe8"

    def install
      bin.install "cdn.supersimple.cloud" => "supersimple"
    end
  end
end

