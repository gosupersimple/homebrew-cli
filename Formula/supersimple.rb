
class Supersimple < Formula
  desc "CLI tool for Supersimple configuration management"
  homepage "https://github.com/gosupersimple/supersimple-cli"
  version "2.13.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://assets.supersimple.io/supersimple-cli/releases/v2.13.3/supersimple-arm64-apple-darwin", :using => :nounzip
      sha256 "c14832db106505085a438c262cc353043e55a532567ef03f2408fc79d8fbcf40"

      def install
        bin.install "supersimple-arm64-apple-darwin" => "supersimple"
      end
    else
      url "https://assets.supersimple.io/supersimple-cli/releases/v2.13.3/supersimple-x86_64-apple-darwin", :using => :nounzip
      sha256 "5b3887002e7e412fe75d8fb3fdccf332e579fa8eaeeb95c731f5f9d1342e3976"

      def install
        bin.install "supersimple-x86_64-apple-darwin" => "supersimple"
      end
    end
  end

  on_linux do
    url "https://assets.supersimple.io/supersimple-cli/releases/v2.13.3/supersimple-x86_64-linux-gnu", :using => :nounzip
    sha256 "2bad6a638daece196fa1bf966ecd72b4bf1a929c38df869d7e19d0b593d23981"

    def install
      bin.install "supersimple-x86_64-linux-gnu" => "supersimple"
    end
  end
end

