# This file was generated by GoReleaser. DO NOT EDIT.
class SupertubesCli < Formula
  desc "Command-line interface for Supertubes"
  homepage "https://banzaicloud.com/"
  version "0.3.9"

  if OS.mac?
    url "https://github.com/banzaicloud/supertubes-cli/releases/download/0.3.9/supertubes_0.3.9_darwin_amd64.tar.gz"
    sha256 "8f04805d025f2b10d5626e09477f80634be73d95b729435ed6bf74c92ec88340"
  elsif OS.linux?
    url "https://github.com/banzaicloud/supertubes-cli/releases/download/0.3.9/supertubes_0.3.9_linux_amd64.tar.gz"
    sha256 "8c4428662f4377bca6eaf326ebcd393995e3f19faf8ebe1771c47605497ca3e7"
  end

  def install
    bin.install "supertubes"
  end

  test do
    system "#{bin}/supertubes --version"
  end
end
