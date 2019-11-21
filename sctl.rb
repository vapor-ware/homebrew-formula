class Sctl < Formula
  desc "Manage secrets on Google Cloud Platform with KMS and state files"
  homepage "https://github.com/vapor-ware/sctl"
  version "1.2.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/vapor-ware/sctl/releases/download/1.2.1/sctl_1.2.1_Darwin_x86_64.tar.gz"
    sha256 "effb7701a969cc2e0cfd9a357e36c31f4a1f2d72d4add11d28488661923599c2"
  elsif OS.linux?
    url "https://github.com/vapor-ware/sctl/releases/download/1.2.1/sctl_1.2.1_Windows_x86_64.tar.gz"
    sha256 "b3c8bb98d6d1ae8d50652adf75a6e0aafab9c112cf39a6ad22fbaa69473ddbfd"
  end

  def install
    bin.install "sctl"
  end

  test do
    system "#{bin}/sctl", "--version"
  end
end
