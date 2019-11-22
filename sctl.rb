class Sctl < Formula
  desc "Manage secrets on Google Cloud Platform with KMS and state files"
  homepage "https://github.com/vapor-ware/sctl"
  version "1.2.2"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/vapor-ware/sctl/releases/download/1.2.2/sctl_1.2.2_Darwin_x86_64.tar.gz"
    sha256 "b7e389c93279a1b4c12c3f7dbb93c92a6dbd59ca054685f8769c8e26b715138d"
  elsif OS.linux?
    url "https://github.com/vapor-ware/sctl/releases/download/1.2.2/sctl_1.2.2_Linux_x86_64.tar.gz"
    sha256 "b2e8c957bd0237e93ba25cec315ff0b518232415144a716f66d6b7b2708b2301"
  end

  def install
    bin.install "sctl"
  end

  test do
    system "#{bin}/sctl", "--version"
  end
end
