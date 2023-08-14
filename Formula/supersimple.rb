class Supersimple < Formula
  desc "CLI tool for Supersimple configuration management"
  homepage "https://github.com/gosupersimple/supersimple-cli"
  version "2.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/cdn.supersimple.cloud/supersimple-cli/releases/v#{version}/supersimple-arm64-apple-darwin", :using => :nounzip
      sha256 "3fb31539881b1689103d0181687c02cf6d91a667cbd7e418ba64daa893814075"

      def install
        bin.install "cdn.supersimple.cloud" => "supersimple"
      end
    else
      url "https://storage.googleapis.com/cdn.supersimple.cloud/supersimple-cli/releases/v#{version}/supersimple-x86_64-apple-darwin"
      sha256 "abb7e93ccd83838a9c6273d8975d965e17ddf98ee6bac90c666dcb1a84d11edf"

      def install
        bin.install "cdn.supersimple.cloud" => "supersimple"
      end
    end
  end

  on_linux do
    url "https://github.com/gosupersimple/supersimple-cli/releases/download/releases/v#{version}/supersimple-x86_64-linux-gnu"
    sha256 "9df7436ff0ddf50eb0cb6cd2bf2813e9c8a9928a6bf4c2c71fc8e31422149606"

    def install
      bin.install "cdn.supersimple.cloud" => "supersimple"
    end
  end
end
