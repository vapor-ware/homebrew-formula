class Sctl < Formula
  desc "Manage secrets on Google Cloud Platform with KMS and state files"
  homepage "https://github.com/vapor-ware/sctl"
  version "1.0.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/vapor-ware/sctl/releases/download/1.0.0/sctl_1.0.0_Darwin_x86_64.tar.gz"
    sha256 "f4b9ce17729e23ef76724c6110f10cdeaebc7ab6290d807f269c38ef5d2dd367"
  elsif OS.linux?
    url "https://github.com/vapor-ware/sctl/releases/download/1.0.0/sctl_1.0.0_Windows_x86_64.tar.gz"
    sha256 "85d63a35d6439ec362553f634d855ee148ab94802f72db4fe4c4002c1b3e820e"
  end

  def install
    bin.install "sctl"
  end

  test do
    system "#{bin}/sctl", "--version"
  end
end
