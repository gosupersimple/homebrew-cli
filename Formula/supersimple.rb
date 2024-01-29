
class Supersimple < Formula
  desc "CLI tool for Supersimple configuration management"
  homepage "https://github.com/gosupersimple/supersimple-cli"
  version "2.5.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/cdn.supersimple.cloud/supersimple-cli/releases/v2.5.0/supersimple-arm64-apple-darwin", :using => :nounzip
      sha256 "f508ab6b80234954300572b1125d5aa7f8bd61995badfeb2ebca0ca57646be12"

      def install
        bin.install "cdn.supersimple.cloud" => "supersimple"
      end
    else
      url "https://storage.googleapis.com/cdn.supersimple.cloud/supersimple-cli/releases/v2.5.0/supersimple-x86_64-apple-darwin", :using => :nounzip
      sha256 "7ebf700d96c084e996b47af3b286c714ba2465335b8e3848515aced8c825188e"

      def install
        bin.install "cdn.supersimple.cloud" => "supersimple"
      end
    end
  end

  on_linux do
    url "https://storage.googleapis.com/cdn.supersimple.cloud/supersimple-cli/releases/v2.5.0/supersimple-x86_64-linux-gnu", :using => :nounzip
    sha256 "528a527050bc7121b7f590f6315419af5d1454852ae46f81f3e5fac238f5fb62"

    def install
      bin.install "cdn.supersimple.cloud" => "supersimple"
    end
  end
end

