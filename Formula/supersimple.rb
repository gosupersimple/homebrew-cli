
class Supersimple < Formula
  desc "CLI tool for Supersimple configuration management"
  homepage "https://github.com/gosupersimple/supersimple-cli"
  version "2.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/cdn.supersimple.cloud/supersimple-cli/releases/v2.1.1/supersimple-arm64-apple-darwin", :using => :nounzip
      sha256 "0dd8b07e4a8b784bc835fa16636f4c5c34ab290729bc425cd307f827706f10b1"

      def install
        bin.install "cdn.supersimple.cloud" => "supersimple"
      end
    else
      url "https://storage.googleapis.com/cdn.supersimple.cloud/supersimple-cli/releases/v2.1.1/supersimple-x86_64-apple-darwin", :using => :nounzip
      sha256 "26ccf1ca60937f3b2195015fdd0e245b8b1b92bf1de7a3397a56296f3d29e341"

      def install
        bin.install "cdn.supersimple.cloud" => "supersimple"
      end
    end
  end

  on_linux do
    url "https://storage.googleapis.com/cdn.supersimple.cloud/supersimple-cli/releases/v2.1.1/supersimple-x86_64-linux-gnu", :using => :nounzip
    sha256 "5dca4df4e2dd3cd4c771010dc812ac32567328ad253eac98c875c27542df758c"

    def install
      bin.install "cdn.supersimple.cloud" => "supersimple"
    end
  end
end

