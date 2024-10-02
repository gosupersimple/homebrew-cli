
class Supersimple < Formula
  desc "CLI tool for Supersimple configuration management"
  homepage "https://github.com/gosupersimple/supersimple-cli"
  version "2.7.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/cdn.supersimple.cloud/supersimple-cli/releases/v2.7.7/supersimple-arm64-apple-darwin", :using => :nounzip
      sha256 "fbb8e0dcd7a9ddc046c7188ba46379a2ce0df52061ac61d9d363470c3abb009c"

      def install
        bin.install "cdn.supersimple.cloud" => "supersimple"
      end
    else
      url "https://storage.googleapis.com/cdn.supersimple.cloud/supersimple-cli/releases/v2.7.7/supersimple-x86_64-apple-darwin", :using => :nounzip
      sha256 "2532c632008f5f60994ccafd045223dafee98a65949fea6c36581d12fd4634c0"

      def install
        bin.install "cdn.supersimple.cloud" => "supersimple"
      end
    end
  end

  on_linux do
    url "https://storage.googleapis.com/cdn.supersimple.cloud/supersimple-cli/releases/v2.7.7/supersimple-x86_64-linux-gnu", :using => :nounzip
    sha256 "27f9ac71e31f315a8cfd32d6bd942a478bd8ef74f34f1c4e17d796db9614ab0b"

    def install
      bin.install "cdn.supersimple.cloud" => "supersimple"
    end
  end
end

