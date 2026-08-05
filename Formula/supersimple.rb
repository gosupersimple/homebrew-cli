
class Supersimple < Formula
  desc "CLI tool for Supersimple configuration management"
  homepage "https://github.com/gosupersimple/supersimple-cli"
  version "2.23.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://assets.supersimple.io/supersimple-cli/releases/v2.23.0/supersimple-arm64-apple-darwin", :using => :nounzip
      sha256 "4534fde917aa02339e704439946c3e2c0ae304e9436ba7ccb71f5dacfec391a3"

      def install
        bin.install "supersimple-arm64-apple-darwin" => "supersimple"
      end
    else
      url "https://assets.supersimple.io/supersimple-cli/releases/v2.23.0/supersimple-x86_64-apple-darwin", :using => :nounzip
      sha256 "ebda0965df0b928061c71d10bf41d96fdc86e10af55f09f97aa79a9aefc3eff1"

      def install
        bin.install "supersimple-x86_64-apple-darwin" => "supersimple"
      end
    end
  end

  on_linux do
    url "https://assets.supersimple.io/supersimple-cli/releases/v2.23.0/supersimple-x86_64-linux-gnu", :using => :nounzip
    sha256 "29d8288658b4c2adf4bb572a304b78d7f68bcc2e38f797f19eeaf48e915ddba1"

    def install
      bin.install "supersimple-x86_64-linux-gnu" => "supersimple"
    end
  end
end

