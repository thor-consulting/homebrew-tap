# This file was generated by GoReleaser. DO NOT EDIT.
class BackyardsCli < Formula
  desc "Command-line interface for Backyards"
  homepage "https://banzaicloud.com/"
  version "1.1.3"

  if OS.mac?
    url "https://github.com/banzaicloud/backyards-cli/releases/download/1.1.3/backyards_1.1.3_darwin_amd64.tar.gz"
    sha256 "08e6adc0f8ddac2a968ac06ad604cc47810d87eb95fd36f0c12dc2775e5a407d"
  elsif OS.linux?
    url "https://github.com/banzaicloud/backyards-cli/releases/download/1.1.3/backyards_1.1.3_linux_amd64.tar.gz"
    sha256 "4dc7cf2aebf281f41bbf6b3739a68f7e6e6f308fea922ef6d74dfd4887fe061d"
  end

  def install
    bin.install "backyards"
  end

  test do
    system "#{bin}/backyards --version"
  end
end
