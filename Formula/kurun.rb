# This file was generated by GoReleaser. DO NOT EDIT.
class Kurun < Formula
  desc "Run main.go in Kubernetes with one command"
  homepage "https://banzaicloud.com/blog/kurun"
  version "0.1.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/banzaicloud/kurun/releases/download/0.1.1/kurun_0.1.1_darwin_amd64.tar.gz"
    sha256 "9a610e3b2a7bfb9a4537a29964d50fc4972f403b25ded9fd3c9efa0e08badb0a"
  elsif OS.linux?
    url "https://github.com/banzaicloud/kurun/releases/download/0.1.1/kurun_0.1.1_linux_amd64.tar.gz"
    sha256 "bf6904f051e3161d92fe0dc920649d6c347386160103add9f6fa663736b44a19"
  end

  def install
    bin.install "kurun"
  end

  test do
    system "#{bin}/kurun --version"
  end
end
