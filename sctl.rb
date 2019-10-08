class Sctl < Formula
  desc "Manage secrets on Google Cloud Platform with KMS and state files"
  homepage "https://github.com/vapor-ware/sctl"
  version "1.0.0-rc6"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/vapor-ware/sctl/releases/download/1.0.0-rc6/sctl_1.0.0-rc6_Darwin_x86_64.tar.gz"
    sha256 "773aa96f8bfb396f8c51fde874d15a4f68960866281f5a0e52c984866eb7d660"
  elsif OS.linux?
    url "https://github.com/vapor-ware/sctl/releases/download/1.0.0-rc6/sctl_1.0.0-rc6_Linux_x86_64.tar.gz"
    sha256 "e630a54036154424ec5699e0444dc9f4d9dc9ab1708539a52e13a7b58bc3ac61"
  end

  def install
    bin.install "sctl"
  end

  test do
    system "#{bin}/sctl", "--version"
  end
end
