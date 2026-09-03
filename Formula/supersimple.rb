
class Supersimple < Formula
  desc "CLI tool for Supersimple configuration management"
  homepage "https://github.com/gosupersimple/supersimple-cli"
  version "2.26.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://assets.supersimple.io/supersimple-cli/releases/v2.26.0/supersimple-arm64-apple-darwin", :using => :nounzip
      sha256 "cd0f8e4ccd8022c632dec39d962c713d77368f756d9e916e656c75a41daa1be9"

      def install
        bin.install "supersimple-arm64-apple-darwin" => "supersimple"
      end
    else
      url "https://assets.supersimple.io/supersimple-cli/releases/v2.26.0/supersimple-x86_64-apple-darwin", :using => :nounzip
      sha256 "31dafd044651af71ee9badbab8ac193bc6f715b5c80d09f7db25e7f9db4bad2d"

      def install
        bin.install "supersimple-x86_64-apple-darwin" => "supersimple"
      end
    end
  end

  on_linux do
    url "https://assets.supersimple.io/supersimple-cli/releases/v2.26.0/supersimple-x86_64-linux-gnu", :using => :nounzip
    sha256 "3e51a938049fff7b87638ffb0ec17ae88fd108fa425995aa7d947ec56b8e05af"

    def install
      bin.install "supersimple-x86_64-linux-gnu" => "supersimple"
    end
  end
end

