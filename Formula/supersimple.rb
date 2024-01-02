class Supersimple < Formula
  desc "CLI tool for Supersimple configuration management"
  homepage "https://github.com/gosupersimple/supersimple-cli"
  version "2.3.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/cdn.supersimple.cloud/supersimple-cli/releases/v2.3.3/supersimple-arm64-apple-darwin", :using => :nounzip
      sha256 "e16e6d46ddc36cea4f10a9977add1fa8536d8f6828cb0f85b78c0feabf9c4327"

      def install
        bin.install "cdn.supersimple.cloud" => "supersimple"
      end
    else
      url "https://storage.googleapis.com/cdn.supersimple.cloud/supersimple-cli/releases/v2.3.3/supersimple-x86_64-apple-darwin", :using => :nounzip
      sha256 "6421292a5c1889077ec3d8724b87578027037e7faebfbf6260d7713ffee3f8c5"

      def install
        bin.install "cdn.supersimple.cloud" => "supersimple"
      end
    end
  end

  on_linux do
    url "https://storage.googleapis.com/cdn.supersimple.cloud/supersimple-cli/releases/v2.3.3/supersimple-x86_64-linux-gnu", :using => :nounzip
    sha256 "cb5fe406fd5a23d3a3d90757f6f712321367cb5d4e19e49391cdd317172c139b"

    def install
      bin.install "cdn.supersimple.cloud" => "supersimple"
    end
  end
end
