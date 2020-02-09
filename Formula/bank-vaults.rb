# This file was generated by GoReleaser. DO NOT EDIT.
class BankVaults < Formula
  desc "A Vault swiss-army knife CLI with Kubernetes support"
  homepage "https://banzaicloud.com/products/bank-vaults/"
  version "0.9.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/banzaicloud/bank-vaults/releases/download/0.9.0/bank-vaults-darwin-amd64.tar.gz"
    sha256 "ac5dbc7e0a41cf362ec74a66ae5038386c6600a746c9519a57512708960c71d5"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/banzaicloud/bank-vaults/releases/download/0.9.0/bank-vaults-linux-amd64.tar.gz"
      sha256 "6aef46bb2d585d922324beba614706f27e94f118d2858cd311c61fa4f73ac1ed"
    end
  end

  def install
    bin.install "bank-vaults"
  end

  test do
    system "#{bin}/bank-vaults"
  end
end