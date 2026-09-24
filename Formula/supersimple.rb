
class Supersimple < Formula
  desc "CLI tool for Supersimple configuration management"
  homepage "https://github.com/gosupersimple/supersimple-cli"
  version "2.27.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://assets.supersimple.io/supersimple-cli/releases/v2.27.0/supersimple-arm64-apple-darwin", :using => :nounzip
      sha256 "a7f70e892ec55d79bb07cabb6c5b3faefa9004c7801f00c9a95fcf7f990a248a"

      def install
        bin.install "supersimple-arm64-apple-darwin" => "supersimple"
      end
    else
      url "https://assets.supersimple.io/supersimple-cli/releases/v2.27.0/supersimple-x86_64-apple-darwin", :using => :nounzip
      sha256 "af8cfe11d340eb11c458b78d14e873de7cb7ce079b6d949cb75642c0871b9c5d"

      def install
        bin.install "supersimple-x86_64-apple-darwin" => "supersimple"
      end
    end
  end

  on_linux do
    url "https://assets.supersimple.io/supersimple-cli/releases/v2.27.0/supersimple-x86_64-linux-gnu", :using => :nounzip
    sha256 "ad725db079864dfb4e509f245b4f312a33e9b54cd9374dd7b92dc26137d8c346"

    def install
      bin.install "supersimple-x86_64-linux-gnu" => "supersimple"
    end
  end
end

