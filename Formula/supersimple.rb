
class Supersimple < Formula
  desc "CLI tool for Supersimple configuration management"
  homepage "https://github.com/gosupersimple/supersimple-cli"
  version "2.14.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://assets.supersimple.io/supersimple-cli/releases/v2.14.0/supersimple-arm64-apple-darwin", :using => :nounzip
      sha256 "973ccbf91b2b2a075bf6423e652d29d9fbb966fda249f56d2e87ef298c243672"

      def install
        bin.install "supersimple-arm64-apple-darwin" => "supersimple"
      end
    else
      url "https://assets.supersimple.io/supersimple-cli/releases/v2.14.0/supersimple-x86_64-apple-darwin", :using => :nounzip
      sha256 "de948195e632d8c21a38154b1425fc1eb75c682c83e46fcbdb4502f380273897"

      def install
        bin.install "supersimple-x86_64-apple-darwin" => "supersimple"
      end
    end
  end

  on_linux do
    url "https://assets.supersimple.io/supersimple-cli/releases/v2.14.0/supersimple-x86_64-linux-gnu", :using => :nounzip
    sha256 "50baf80711ae7ac4886f7c388240817ea738cbf85d8fc3da60abd77b4579d9eb"

    def install
      bin.install "supersimple-x86_64-linux-gnu" => "supersimple"
    end
  end
end

