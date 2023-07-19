class Supersimple < Formula
  desc "CLI tool for Supersimple configuration management"
  homepage "https://github.com/gosupersimple/supersimple-cli"
  version "1.3.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/cdn.supersimple.cloud/supersimple-cli/v#{version}/supersimple-arm64-apple-darwin", :using => :nounzip
      sha256 "f5f905749b50964a132873cfaa990ab6e286e1f49122e4967d58a5b50a8e4765"

      def install
        bin.install "cdn.supersimple.cloud" => "supersimple"
      end
    else
      url "https://storage.googleapis.com/cdn.supersimple.cloud/supersimple-cli/v#{version}/supersimple-x86_64-apple-darwin"
      sha256 "0fc79131e65fbbb06b12431ada0cb631843a914f92e73c80ec235e7c16720b24"

      def install
        bin.install "cdn.supersimple.cloud" => "supersimple"
      end
    end
  end

  on_linux do
    url "https://github.com/gosupersimple/supersimple-cli/releases/download/v#{version}/supersimple-x86_64-linux-gnu"
    sha256 "d7b959cd9ff1e92fce10704261da92256f44dfe82a00318e570c87c5b8ed31e0"

    def install
      bin.install "cdn.supersimple.cloud" => "supersimple"
    end
  end
end
