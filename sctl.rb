# This file was generated by GoReleaser. DO NOT EDIT.
class Sctl < Formula
  desc "Manage secrets on Google Cloud Platform with KMS and state files"
  homepage "https://github.com/vapor-ware/sctl"
  version "1.4.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/vapor-ware/sctl/releases/download/1.4.1/sctl_1.4.1_Darwin_x86_64.tar.gz"
    sha256 "ba5e2051f27f5e04dc95fe77583b6b2d78be5382508c4bbf0f5760f979585d40"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/vapor-ware/sctl/releases/download/1.4.1/sctl_1.4.1_Linux_x86_64.tar.gz"
      sha256 "3cbd08abbfc19f530a58e68ab262f2a494e38b26e94b8ed12e9cf96dae0796cd"
    end
  end

  def install
    bin.install "sctl"
  end

  test do
    system "#{bin}/sctl --version"
  end
end
