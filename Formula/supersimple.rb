
class Supersimple < Formula
  desc "CLI tool for Supersimple configuration management"
  homepage "https://github.com/gosupersimple/supersimple-cli"
  version "2.7.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/cdn.supersimple.cloud/supersimple-cli/releases/v2.7.1/supersimple-arm64-apple-darwin", :using => :nounzip
      sha256 "0e4d0c10f272d0b5ef0b25229eb6d4a8a00b9aa05535a6d546995b62674edb78"

      def install
        bin.install "cdn.supersimple.cloud" => "supersimple"
      end
    else
      url "https://storage.googleapis.com/cdn.supersimple.cloud/supersimple-cli/releases/v2.7.1/supersimple-x86_64-apple-darwin", :using => :nounzip
      sha256 "d38d7051e6f6450303e5a0bb6af389667d5c0aec7c1029a33b4140508430f03c"

      def install
        bin.install "cdn.supersimple.cloud" => "supersimple"
      end
    end
  end

  on_linux do
    url "https://storage.googleapis.com/cdn.supersimple.cloud/supersimple-cli/releases/v2.7.1/supersimple-x86_64-linux-gnu", :using => :nounzip
    sha256 "c632330f05489090b5f6905f460265ec811523ff104a72df6da280b1d8345bda"

    def install
      bin.install "cdn.supersimple.cloud" => "supersimple"
    end
  end
end

