
class Supersimple < Formula
  desc "CLI tool for Supersimple configuration management"
  homepage "https://github.com/gosupersimple/supersimple-cli"
  version "2.9.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://assets.supersimple.io/supersimple-cli/releases/v2.9.0/supersimple-arm64-apple-darwin", :using => :nounzip
      sha256 "457af47734b6ad645b1d7b56dfd6d9ba976c182aee36fa4602306e4541ba5c34"

      def install
        bin.install "supersimple-arm64-apple-darwin" => "supersimple"
      end
    else
      url "https://assets.supersimple.io/supersimple-cli/releases/v2.9.0/supersimple-x86_64-apple-darwin", :using => :nounzip
      sha256 "ed47c0b464a5a6efd81620480ee0dbaca36ddeb5dd4ca69eef585b296d8af2e7"

      def install
        bin.install "supersimple-x86_64-apple-darwin" => "supersimple"
      end
    end
  end

  on_linux do
    url "https://assets.supersimple.io/supersimple-cli/releases/v2.9.0/supersimple-x86_64-linux-gnu", :using => :nounzip
    sha256 "6356b4ac6a1bee632081976d0310735be7dc532f7fba8681446c75b35e8511d1"

    def install
      bin.install "supersimple-x86_64-linux-gnu" => "supersimple"
    end
  end
end

