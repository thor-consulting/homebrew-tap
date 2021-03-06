# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TerraformProviderK8s < Formula
  desc "Kubernetes Terraform provider with support for raw manifests"
  homepage "https://banzaicloud.com/"
  version "0.9.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/banzaicloud/terraform-provider-k8s/releases/download/v0.9.0/terraform-provider-k8s_0.9.0_darwin_amd64.zip"
    sha256 "1ffa0db7e4a140c52f0ba32521d17ccfa5854a12f58a0b7921adad2da507c280"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/banzaicloud/terraform-provider-k8s/releases/download/v0.9.0/terraform-provider-k8s_0.9.0_linux_amd64.zip"
    sha256 "3b29c095470553796e1905324e7c3a6c0c2bb47e3a570eb0d45e770a5eaca9ed"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/banzaicloud/terraform-provider-k8s/releases/download/v0.9.0/terraform-provider-k8s_0.9.0_linux_arm.zip"
    sha256 "2bbb8180db7ad10fe01bfc98ade37e0bf50b62923fdae5f1453583f5e7285db9"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/banzaicloud/terraform-provider-k8s/releases/download/v0.9.0/terraform-provider-k8s_0.9.0_linux_arm64.zip"
    sha256 "8722febdf87b4217a50fa326e4214528a1acec20ad00c083d2ddf8a3008242f7"
  end

  def install
    bin.install "terraform-provider-k8s_v0.9.0"
  end
end
