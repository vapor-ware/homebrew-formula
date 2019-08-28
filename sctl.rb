class Sctl < Formula
  desc "Manage secrets on Google Cloud Platform with KMS and state files"
  homepage "https://github.com/vapor-ware/sctl"
  version "1.0.0-rc3"
  bottle :unneeded

  #depends_on "google-cloud-sdk"

  if OS.mac?
    url "https://github.com/vapor-ware/sctl/releases/download/1.0.0-rc3/sctl_1.0.0-rc3_Darwin_x86_64.tar.gz"
    sha256 "ae0861812c07dc2796cdd85513b3003aa31f6fb5c9a7af8325863898e9c201e8"
  elsif OS.linux?
    url "https://github.com/vapor-ware/sctl/releases/download/1.0.0-rc3/sctl_1.0.0-rc3_Linux_x86_64.tar.gz"
    sha256 "d9df42e283f02c00b567dc8a55b6a7379d5d9dd92e4b0f0c5917c039c257d543"
  end

  def install
    bin.install "sctl"
  end

  test do
    system "#{bin}/sctl", "--version"
  end
end
