# This file was generated by GoReleaser. DO NOT EDIT.
class OneEye < Formula
  desc "Command-line interface for One Eye"
  homepage "https://banzaicloud.com/"
  version "0.2.7"

  if OS.mac?
    url "https://banzaicloud.com/downloads/one-eye/0.2.7/dist/one-eye_0.2.7_darwin_amd64.tar.gz"
    sha256 "929c1bb55ee29ac7878e3d311ea9f502bbb4988af723a40ca6d54f8bc0ca5373"
  elsif OS.linux?
    url "https://banzaicloud.com/downloads/one-eye/0.2.7/dist/one-eye_0.2.7_linux_amd64.tar.gz"
    sha256 "9710e29811a5477086e2451723d76c59ac5cd498eaa86cfcabbf1294b25a4d9a"
  end

  def install
    bin.install "one-eye"
  end

  test do
    system "#{bin}/one-eye --version"
  end
end
