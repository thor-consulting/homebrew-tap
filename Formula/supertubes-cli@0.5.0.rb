# This file was generated by GoReleaser. DO NOT EDIT.
class SupertubesCliAT050 < Formula
  desc "Command-line interface for Supertubes"
  homepage "https://banzaicloud.com/"
  version "0.5.0"

  if OS.mac?
    url "https://banzaicloud.com/downloads/supertubes-cli/v0.5.0/dist/supertubes_0.5.0_darwin_amd64.tar.gz"
    sha256 "a3a6a3ee9a46eebbaf9c5cb5def1e56e1ffd502c99f39d6560ef17a8dc7ecf08"
  elsif OS.linux?
    url "https://banzaicloud.com/downloads/supertubes-cli/v0.5.0/dist/supertubes_0.5.0_linux_amd64.tar.gz"
    sha256 "37b41eb9c7eff5ac72b86c54da5635989fd1aac1e93123d3aecfee6fa67bd25d"
  end

  def install
    bin.install "supertubes"
  end

  test do
    system "#{bin}/supertubes --version"
  end
end
