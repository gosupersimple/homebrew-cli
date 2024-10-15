
class Supersimple < Formula
  desc "CLI tool for Supersimple configuration management"
  homepage "https://github.com/gosupersimple/supersimple-cli"
  version "2.7.10"

  on_macos do
    if Hardware::CPU.arm?
      url "https://assets.supersimple.io/supersimple-cli/releases/v2.7.10/supersimple-arm64-apple-darwin", :using => :nounzip
      sha256 "ba3159cf36a0f3e0e48dbb0b8de77a836c19d1930bee57741791921b7661993d"

      def install
        bin.install "cdn.supersimple.cloud" => "supersimple"
      end
    else
      url "https://assets.supersimple.io/supersimple-cli/releases/v2.7.10/supersimple-x86_64-apple-darwin", :using => :nounzip
      sha256 "06ff2bc37000865d7a8a3deec863f996ecd512a6201b0b0c5e56df891782b437"

      def install
        bin.install "cdn.supersimple.cloud" => "supersimple"
      end
    end
  end

  on_linux do
    url "https://assets.supersimple.io/supersimple-cli/releases/v2.7.10/supersimple-x86_64-linux-gnu", :using => :nounzip
    sha256 "f61ba8c5798350aac4b5a75da4eb426c16f8a000a55dd974416f024d29d1f046"

    def install
      bin.install "cdn.supersimple.cloud" => "supersimple"
    end
  end
end

