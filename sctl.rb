class Sctl < Formula
  desc "Manage secrets on Google Cloud Platform with KMS and state files"
  homepage "https://github.com/vapor-ware/sctl"
  version "1.3.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/vapor-ware/sctl/releases/download/1.3.1/sctl_1.3.1_Darwin_x86_64.tar.gz"
    sha256 "15368f81bfe779c87d8e07356d58c1bd190e65bdf47fc171658780e37a35b81a"
  elsif OS.linux?
    url "https://github.com/vapor-ware/sctl/releases/download/1.3.1/sctl_1.3.1_Linux_x86_64.tar.gz"
    sha256 "50e34ba2d825724b321f203a1c16591656328719dd3f3b4b10e1d107c4a72403"
  end

  def install
    bin.install "sctl"
  end

  test do
    system "#{bin}/sctl", "--version"
  end
end
