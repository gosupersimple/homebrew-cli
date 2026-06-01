
class Supersimple < Formula
  desc "CLI tool for Supersimple configuration management"
  homepage "https://github.com/gosupersimple/supersimple-cli"
  version "2.19.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://assets.supersimple.io/supersimple-cli/releases/v2.19.7/supersimple-arm64-apple-darwin", :using => :nounzip
      sha256 "ddde31d4b43af2e36e1dd261039c5fc36c9bd2892596475a66682eda3818f280"

      def install
        bin.install "supersimple-arm64-apple-darwin" => "supersimple"
      end
    else
      url "https://assets.supersimple.io/supersimple-cli/releases/v2.19.7/supersimple-x86_64-apple-darwin", :using => :nounzip
      sha256 "b8a1b4216194d2efee966ab33861a81fa222da08a9c96896c383ce9da7cd4cfd"

      def install
        bin.install "supersimple-x86_64-apple-darwin" => "supersimple"
      end
    end
  end

  on_linux do
    url "https://assets.supersimple.io/supersimple-cli/releases/v2.19.7/supersimple-x86_64-linux-gnu", :using => :nounzip
    sha256 "168a2abac4d81a724430bfd092537599a77296076e37bc559989bb4a15c4f62d"

    def install
      bin.install "supersimple-x86_64-linux-gnu" => "supersimple"
    end
  end
end

