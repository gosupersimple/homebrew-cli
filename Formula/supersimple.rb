
class Supersimple < Formula
  desc "CLI tool for Supersimple configuration management"
  homepage "https://github.com/gosupersimple/supersimple-cli"
  version "2.7.8"

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/cdn.supersimple.cloud/supersimple-cli/releases/v2.7.8/supersimple-arm64-apple-darwin", :using => :nounzip
      sha256 "b2b91150993dce5b5bd3ad5aa6cf8d0ccf4af1980a23e5e0411c8431eacf1ffb"

      def install
        bin.install "cdn.supersimple.cloud" => "supersimple"
      end
    else
      url "https://storage.googleapis.com/cdn.supersimple.cloud/supersimple-cli/releases/v2.7.8/supersimple-x86_64-apple-darwin", :using => :nounzip
      sha256 "971002c4833843303f2db18bd98aa8becce155db119ce2fc8ede52dc799195aa"

      def install
        bin.install "cdn.supersimple.cloud" => "supersimple"
      end
    end
  end

  on_linux do
    url "https://storage.googleapis.com/cdn.supersimple.cloud/supersimple-cli/releases/v2.7.8/supersimple-x86_64-linux-gnu", :using => :nounzip
    sha256 "00aecee277166d694914c54c0893d2b0aea750f772cbab49926340c9edc2efd2"

    def install
      bin.install "cdn.supersimple.cloud" => "supersimple"
    end
  end
end

