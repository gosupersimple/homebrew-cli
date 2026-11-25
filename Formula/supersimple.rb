
class Supersimple < Formula
  desc "CLI tool for Supersimple configuration management"
  homepage "https://github.com/gosupersimple/supersimple-cli"
  version "2.32.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://assets.supersimple.io/supersimple-cli/releases/v2.32.2/supersimple-arm64-apple-darwin", :using => :nounzip
      sha256 "7b0058c72b77cf22a35f5b564e71a8902cbddbeecb6ad1b69d6ba357cfc8a2d2"

      def install
        bin.install "supersimple-arm64-apple-darwin" => "supersimple"
      end
    else
      url "https://assets.supersimple.io/supersimple-cli/releases/v2.32.2/supersimple-x86_64-apple-darwin", :using => :nounzip
      sha256 "74214c364d9344ae08d6e2764dbd135310177c2ab78aaa297dd01f01e8f32a58"

      def install
        bin.install "supersimple-x86_64-apple-darwin" => "supersimple"
      end
    end
  end

  on_linux do
    url "https://assets.supersimple.io/supersimple-cli/releases/v2.32.2/supersimple-x86_64-linux-gnu", :using => :nounzip
    sha256 "71e97490559e27a7df1bd3a701a5d38bb721daf3aad0cb694cf58ebd6a23b3b9"

    def install
      bin.install "supersimple-x86_64-linux-gnu" => "supersimple"
    end
  end
end

