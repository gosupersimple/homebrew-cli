
class Supersimple < Formula
  desc "CLI tool for Supersimple configuration management"
  homepage "https://github.com/gosupersimple/supersimple-cli"
  version "1.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "A", :using => :nounzip
      sha256 "B"

      def install
        bin.install "cdn.supersimple.cloud" => "supersimple"
      end
    else
      url "C", :using => :nounzip
      sha256 "D"

      def install
        bin.install "cdn.supersimple.cloud" => "supersimple"
      end
    end
  end

  on_linux do
    url "E", :using => :nounzip
    sha256 "F"

    def install
      bin.install "cdn.supersimple.cloud" => "supersimple"
    end
  end
end

