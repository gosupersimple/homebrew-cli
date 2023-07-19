class Cli < Formula
  desc "CLI tool for Supersimple configuration management"
  homepage "https://github.com/gosupersimple/supersimple-cli"
  version "1.3.4"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/cdn.supersimple.cloud/supersimple-cli/v1.3.4/supersimple-arm64-apple-darwin"
      sha256 "f5f905749b50964a132873cfaa990ab6e286e1f49122e4967d58a5b50a8e4765"
    else
      url "https://storage.googleapis.com/cdn.supersimple.cloud/supersimple-cli/v1.3.4/supersimple-x86_64-apple-darwin"
      sha256 "0fc79131e65fbbb06b12431ada0cb631843a914f92e73c80ec235e7c16720b24"
    end
  elsif OS.linux?
    url "https://github.com/gosupersimple/supersimple-cli/releases/download/v1.3.0/supersimple-x86_64-linux-gnu"
    sha256 "d7b959cd9ff1e92fce10704261da92256f44dfe82a00318e570c87c5b8ed31e0"
  end

  def install
    bin.install "supersimple"
  end
end
