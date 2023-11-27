class Supersimple < Formula
  desc "CLI tool for Supersimple configuration management"
  homepage "https://github.com/gosupersimple/supersimple-cli"
  version "2.3.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/cdn.supersimple.cloud/supersimple-cli/releases/v2.3.1/supersimple-arm64-apple-darwin", :using => :nounzip
      sha256 "e3673f778eaf88e22967b2d0b7e94a0731e45d6b3058a59fe61f56724b184beb"

      def install
        bin.install "cdn.supersimple.cloud" => "supersimple"
      end
    else
      url "https://storage.googleapis.com/cdn.supersimple.cloud/supersimple-cli/releases/v2.3.1/supersimple-x86_64-apple-darwin", :using => :nounzip
      sha256 "6467ede5ec9ae5b3d8b8f95229d101da18270f1e781adcd8b14a31b5b637d60d"

      def install
        bin.install "cdn.supersimple.cloud" => "supersimple"
      end
    end
  end

  on_linux do
    url "https://storage.googleapis.com/cdn.supersimple.cloud/supersimple-cli/releases/v2.3.1/supersimple-x86_64-linux-gnu", :using => :nounzip
    sha256 "b0c5efdf618e66a5a5b6a2dc4291c9940c1b256afbac4a3fe9625f1ca7311de1"

    def install
      bin.install "cdn.supersimple.cloud" => "supersimple"
    end
  end
end
