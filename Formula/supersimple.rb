
class Supersimple < Formula
  desc "CLI tool for Supersimple configuration management"
  homepage "https://github.com/gosupersimple/supersimple-cli"
  version "2.7.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/cdn.supersimple.cloud/supersimple-cli/releases/v2.7.0/supersimple-arm64-apple-darwin", :using => :nounzip
      sha256 "0d635bbf98da423d0fee13ab0ff155f8b45cb6b15eb792692ac7a5c185d9e41a"

      def install
        bin.install "cdn.supersimple.cloud" => "supersimple"
      end
    else
      url "https://storage.googleapis.com/cdn.supersimple.cloud/supersimple-cli/releases/v2.7.0/supersimple-x86_64-apple-darwin", :using => :nounzip
      sha256 "cde27a00286af3b42727d45dc3639f3d343b4d343dc03c9005e69420f578c9b7"

      def install
        bin.install "cdn.supersimple.cloud" => "supersimple"
      end
    end
  end

  on_linux do
    url "https://storage.googleapis.com/cdn.supersimple.cloud/supersimple-cli/releases/v2.7.0/supersimple-x86_64-linux-gnu", :using => :nounzip
    sha256 "9c8fae32438084d46eb9a37533189a4054dcf43620002452bc9a56da7985802f"

    def install
      bin.install "cdn.supersimple.cloud" => "supersimple"
    end
  end
end

