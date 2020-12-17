# This file was generated by GoReleaser. DO NOT EDIT.
class BackyardsCliAT149 < Formula
  desc "Command-line interface for Backyards"
  homepage "https://banzaicloud.com/"
  version "1.4.9"
  bottle :unneeded

  if OS.mac?
    url "https://banzaicloud.com/downloads/backyards-cli/1.4.9/dist/backyards_1.4.9_darwin_amd64.tar.gz"
    sha256 "ac8eecd1f3fe10872978c3f1384aee3bf8c4a4bbb5f50477df6846fe03f23f50"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://banzaicloud.com/downloads/backyards-cli/1.4.9/dist/backyards_1.4.9_linux_amd64.tar.gz"
      sha256 "0692e68f234037a159e2c923a8a8a0de16aa022004b9b52815397117b0016aee"
    end
  end

  def install
    bin.install "backyards"
  end

  test do
    system "#{bin}/backyards --version"
  end
end