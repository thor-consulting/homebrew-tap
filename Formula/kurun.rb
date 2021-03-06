# This file was generated by GoReleaser. DO NOT EDIT.
class Kurun < Formula
  desc "Run main.go in Kubernetes with one command"
  homepage "https://banzaicloud.com/blog/kurun"
  version "0.4.3"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/banzaicloud/kurun/releases/download/0.4.3/kurun-darwin-amd64.tar.gz"
    sha256 "45be6b3f5ad6b94371f279b5ed73dee39356fba1ec5a9060f0b7117412e40d5d"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/banzaicloud/kurun/releases/download/0.4.3/kurun-linux-amd64.tar.gz"
      sha256 "0d63bef5fad24ecec0fa4895a73dc5a99ba81aa951a08065535d24fbe0954acf"
    end
  end
  
  depends_on "inlets"

  def install
    bin.install "kurun"
  end

  test do
    system "#{bin}/kurun --version"
  end
end
