# This file was generated by GoReleaser. DO NOT EDIT.
class SupertubesCliAT051 < Formula
  desc "Command-line interface for Supertubes"
  homepage "https://banzaicloud.com/"
  version "0.5.1"

  if OS.mac?
    url "https://banzaicloud.com/downloads/supertubes-cli/0.5.1/dist/supertubes_0.5.1_darwin_amd64.tar.gz"
    sha256 "4a38bf6f0fd6891c317ff935c0e4db73448587673700bd30d87af2c4aded85f7"
  elsif OS.linux?
    url "https://banzaicloud.com/downloads/supertubes-cli/0.5.1/dist/supertubes_0.5.1_linux_amd64.tar.gz"
    sha256 "181ba0d0928b12397aca170d70ba9f50afccaaae1f5eeb73ad5a122ad3bef645"
  end

  def install
    bin.install "supertubes"
  end

  test do
    system "#{bin}/supertubes --version"
  end
end
