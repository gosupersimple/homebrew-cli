
class Supersimple < Formula
  desc "CLI tool for Supersimple configuration management"
  homepage "https://github.com/gosupersimple/supersimple-cli"
  version "2.6.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/cdn.supersimple.cloud/supersimple-cli/releases/v2.6.1/supersimple-arm64-apple-darwin", :using => :nounzip
      sha256 "52e4431ad25665b60a9cc7c0c8dd39af81ece9d63240fb7ef6799e7f99cc5b8d"

      def install
        bin.install "cdn.supersimple.cloud" => "supersimple"
      end
    else
      url "https://storage.googleapis.com/cdn.supersimple.cloud/supersimple-cli/releases/v2.6.1/supersimple-x86_64-apple-darwin", :using => :nounzip
      sha256 "fa75d819f6736299d7be65d613de55eb538c5a67dc87ddf4cbc3c67daf57b69f"

      def install
        bin.install "cdn.supersimple.cloud" => "supersimple"
      end
    end
  end

  on_linux do
    url "https://storage.googleapis.com/cdn.supersimple.cloud/supersimple-cli/releases/v2.6.1/supersimple-x86_64-linux-gnu", :using => :nounzip
    sha256 "b30b00c8be1b718fd93b64a71b29b76c488433e94a2e484c692eb246aa58f206"

    def install
      bin.install "cdn.supersimple.cloud" => "supersimple"
    end
  end
end

