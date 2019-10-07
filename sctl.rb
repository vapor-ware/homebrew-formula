class Sctl < Formula
  desc "Manage secrets on Google Cloud Platform with KMS and state files"
  homepage "https://github.com/vapor-ware/sctl"
  version "1.0.0-rc3"
  bottle :unneeded

  #depends_on "google-cloud-sdk"

  if OS.mac?
    url "https://github.com/vapor-ware/sctl/releases/download/1.0.0-rc5/sctl_1.0.0-rc5_Darwin_x86_64.tar.gz"
    sha256 "a26f1e8a2fa3621affc1f3d4e9d571687a7fb6a242998984787ffcf7c45c5904"
  elsif OS.linux?
    url "https://github.com/vapor-ware/sctl/releases/download/1.0.0-rc5/sctl_1.0.0-rc5_Linux_x86_64.tar.gz"
    sha256 "4c2d896a1c6c0aeda1f99be7e27b8da31d5691bbb6ebd34456cd2d7c070bc824"
  end

  def install
    bin.install "sctl"
  end

  test do
    system "#{bin}/sctl", "--version"
  end
end
