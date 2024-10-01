
class Supersimple < Formula
  desc "CLI tool for Supersimple configuration management"
  homepage "https://github.com/gosupersimple/supersimple-cli"
  version "2.7.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/cdn.supersimple.cloud/supersimple-cli/releases/v2.7.6/supersimple-arm64-apple-darwin", :using => :nounzip
      sha256 "19585465494da2af078bdd0c193698a0d59371901ff144c719c16fe9191e9919"

      def install
        bin.install "cdn.supersimple.cloud" => "supersimple"
      end
    else
      url "https://storage.googleapis.com/cdn.supersimple.cloud/supersimple-cli/releases/v2.7.6/supersimple-x86_64-apple-darwin", :using => :nounzip
      sha256 "56b29b81ac55de650f4bc93c2658ad3bb18a57526296e5c913d767d3c52fdb41"

      def install
        bin.install "cdn.supersimple.cloud" => "supersimple"
      end
    end
  end

  on_linux do
    url "https://storage.googleapis.com/cdn.supersimple.cloud/supersimple-cli/releases/v2.7.6/supersimple-x86_64-linux-gnu", :using => :nounzip
    sha256 "29140d5ee921fbb0a209e649493174a4a5c82bccf4c66f4fb861a03d242a1b7d"

    def install
      bin.install "cdn.supersimple.cloud" => "supersimple"
    end
  end
end

