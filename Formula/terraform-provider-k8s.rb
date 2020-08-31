# This file was generated by GoReleaser. DO NOT EDIT.
class TerraformProviderK8s < Formula
  desc "Kubernetes Terraform provider with support for raw manifests"
  homepage "https://banzaicloud.com/"
  version "0.8.3"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/banzaicloud/terraform-provider-k8s/releases/download/v0.8.3/terraform-provider-k8s_0.8.3_darwin_amd64.zip"
    sha256 "47d8719e1e951b303cca253405a3d9fd2142d326f935691128b35f88413e793a"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/banzaicloud/terraform-provider-k8s/releases/download/v0.8.3/terraform-provider-k8s_0.8.3_linux_amd64.zip"
      sha256 "4acb3ad2cd5b6934f34c811b995054218327480ecca314aa886b465789723f3e"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/banzaicloud/terraform-provider-k8s/releases/download/v0.8.3/terraform-provider-k8s_0.8.3_linux_arm64.zip"
        sha256 "d6183549340cf41c8972d3cc5b9cdeb85c35a2bf062046a4dc4c44feaaa72f0c"
      else
        url "https://github.com/banzaicloud/terraform-provider-k8s/releases/download/v0.8.3/terraform-provider-k8s_0.8.3_linux_arm.zip"
        sha256 "85fcebc420b04e2346483bd715228c65b628d119b05c7f4ad156a4b9db42409a"
      end
    end
  end

  def install
    bin.install "terraform-provider-k8s_v0.8.3"
  end
end
