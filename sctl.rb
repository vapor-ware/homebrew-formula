class Sctl < Formula
  desc "Manage secrets on Google Cloud Platform with KMS and state files"
  homepage "https://github.com/vapor-ware/sctl"
  version "1.0.0-rc2"
  bottle :unneeded

  #depends_on "google-cloud-sdk"

  if OS.mac?
    url "https://github.com/vapor-ware/sctl/releases/download/1.0.0-rc2/sctl_1.0.0-rc2_Darwin_x86_64.tar.gz"
    sha256 "0c940198e61719f674dab91c4c7e06cb326a3dcad68181b2d61a3e8a483f9dc3 "
  elsif OS.linux?
    url "https://github.com/vapor-ware/sctl/releases/download/1.0.0-rc2/sctl_1.0.0-rc2_Linux_x86_64.tar.gz"
    sha256 "4e2b9167d70afc6695e87554474cc3f45a6a0506613c02fb3378cda6139cc6a5"
  end

  def install
    bin.install "sctl"
  end

  test do
    system "#{bin}/sctl", "--version"
  end
end
