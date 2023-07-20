class Supersimple < Formula
  desc "CLI tool for Supersimple configuration management"
  homepage "https://github.com/gosupersimple/supersimple-cli"
  version "1.3.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/cdn.supersimple.cloud/supersimple-cli/v#{version}/supersimple-arm64-apple-darwin", :using => :nounzip
      sha256 "1be01cd28304fae8650f353ffe3699d7d553791dbefa3660aadd182b79bc46a9"

      def install
        bin.install "cdn.supersimple.cloud" => "supersimple"
      end
    else
      url "https://storage.googleapis.com/cdn.supersimple.cloud/supersimple-cli/v#{version}/supersimple-x86_64-apple-darwin"
      sha256 "5dbe7d0047ac410874ed95d9347f32f23b8279bde5a90a5882d4255bbafa359e"

      def install
        bin.install "cdn.supersimple.cloud" => "supersimple"
      end
    end
  end

  on_linux do
    url "https://github.com/gosupersimple/supersimple-cli/releases/download/v#{version}/supersimple-x86_64-linux-gnu"
    sha256 "047028268b7be16d66e196166a271c60738d1175097534cf0c8eb53b6d4b23a7"

    def install
      bin.install "cdn.supersimple.cloud" => "supersimple"
    end
  end
end
