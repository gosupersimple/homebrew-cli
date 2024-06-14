
class Supersimple < Formula
  desc "CLI tool for Supersimple configuration management"
  homepage "https://github.com/gosupersimple/supersimple-cli"
  version "2.7.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/cdn.supersimple.cloud/supersimple-cli/releases/v2.7.2/supersimple-arm64-apple-darwin", :using => :nounzip
      sha256 "6874c6772585760f7de9205e2214e8740c78dde99a15599cc856b0e70d054454"

      def install
        bin.install "cdn.supersimple.cloud" => "supersimple"
      end
    else
      url "https://storage.googleapis.com/cdn.supersimple.cloud/supersimple-cli/releases/v2.7.2/supersimple-x86_64-apple-darwin", :using => :nounzip
      sha256 "f799c7a8243527e4a5d450d82202d303b0a9a97e4335549c82ee830069ab887c"

      def install
        bin.install "cdn.supersimple.cloud" => "supersimple"
      end
    end
  end

  on_linux do
    url "https://storage.googleapis.com/cdn.supersimple.cloud/supersimple-cli/releases/v2.7.2/supersimple-x86_64-linux-gnu", :using => :nounzip
    sha256 "fc91079eb88e45824548858edcb28455453d3f9886a61e1ba2163ade05b71ad7"

    def install
      bin.install "cdn.supersimple.cloud" => "supersimple"
    end
  end
end

