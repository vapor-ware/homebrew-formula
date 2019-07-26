class Sctl < Formula
  desc "Manage secrets on Google Cloud Platform with KMS and state files"
  homepage "https://github.com/vapor-ware/sctl"
  version "0.9.1-rc3"
  bottle :unneeded

  #depends_on "google-cloud-sdk" 

  if OS.mac?
     url "https://github.com/vapor-ware/sctl/releases/download/0.9.1-rc3/sctl_0.9.1-rc3_Darwin_x86_64.tar.gz"
    sha256 "1e00bd4b4113775897e032b1c978fd501732c99aab487adfc160e59f9782488a"
  elsif OS.linux?
    url "https://github.com/vapor-ware/sctl/releases/download/0.9.1-rc3/sctl_0.9.1-rc3_Linux_x86_64.tar.gz"
    sha256 "1871d23bf7b01e45f2d3059cc838ebcd2854cc9e6781e9146df17e7c785fca5a"
  end

  def install
    bin.install "sctl"
  end

  test do
    system "#{bin}/sctl", "--version"
  end
end
