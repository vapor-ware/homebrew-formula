class Sctl < Formula
  desc "Manage secrets on Google Cloud Platform with KMS and state files"
  homepage "https://github.com/vapor-ware/sctl"
  version "1.3.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/vapor-ware/sctl/releases/download/1.3.0/sctl_1.3.0_Darwin_x86_64.tar.gz"
    sha256 "6dd1baa53173ffcab5014f765407da82b6bfaf00dd2faa6cfb78c6f86880a466"
  elsif OS.linux?
    url "https://github.com/vapor-ware/sctl/releases/download/1.3.0/sctl_1.3.0_Linux_x86_64.tar.gz"
    sha256 "6c7163931ed9f0a8818c20013f058c1d7706a482bea2e5ff5987ed6bf5da8758"
  end

  def install
    bin.install "sctl"
  end

  test do
    system "#{bin}/sctl", "--version"
  end
end
