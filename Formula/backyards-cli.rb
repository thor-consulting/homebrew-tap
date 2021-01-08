# This file was generated by GoReleaser. DO NOT EDIT.
class BackyardsCli < Formula
  desc "Command-line interface for Backyards"
  homepage "https://banzaicloud.com/"
  version "1.5.1"
  bottle :unneeded

  if OS.mac?
    url "https://banzaicloud.com/downloads/backyards-cli/1.5.1/dist/backyards_1.5.1_darwin_amd64.tar.gz"
    sha256 "972fe668023320d3f8d5cfc736ca79851970ecea8aa18234b1d508be65d73830"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://banzaicloud.com/downloads/backyards-cli/1.5.1/dist/backyards_1.5.1_linux_amd64.tar.gz"
      sha256 "4fe31a957f03a433393c2ced6f10a65d4488bdc144745b1f7406383cf93d5ae8"
    end
  end

  def install
    bin.install "backyards"
  end

  test do
    system "#{bin}/backyards --version"
  end
end
