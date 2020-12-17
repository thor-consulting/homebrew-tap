# This file was generated by GoReleaser. DO NOT EDIT.
class SupertubesCli < Formula
  desc "Command-line interface for Supertubes"
  homepage "https://banzaicloud.com/"
  version "0.6.2"
  bottle :unneeded

  if OS.mac?
    url "https://banzaicloud.com/downloads/supertubes-cli/0.6.2/dist/supertubes_0.6.2_darwin_amd64.tar.gz"
    sha256 "6759cbe179ff52d1e7e1d05712a32640725f658ca00e56a6f7d43b78dade202b"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://banzaicloud.com/downloads/supertubes-cli/0.6.2/dist/supertubes_0.6.2_linux_amd64.tar.gz"
      sha256 "e5213c4e8562809b2ba458b283eba3194b67065194be75781d9da7a9c7fc25af"
    end
  end

  def install
    bin.install "supertubes"
  end

  test do
    system "#{bin}/supertubes --version"
  end
end
