class Synse < Formula
  desc "Unified CLI for Vapor IO's Synse platform."
  homepage "https://github.com/vapor-ware/synse-cli"
  version "3.0.0-alpha.3"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/vapor-ware/synse-cli/releases/download/3.0.0-alpha.3/synse-cli_3.0.0-alpha.3_darwin_amd64.tar.gz"
    sha256 "31ff3bc780be94c1d5e94aa427e4eee608bff8dc483bd65b6ded5a9aa72544b3"
  elsif OS.linux?
    url "https://github.com/vapor-ware/synse-cli/releases/download/3.0.0-alpha.3/synse-cli_3.0.0-alpha.3_linux_amd64.tar.gz"
    sha256 "c279578a8224b348957367a94eff32a3c9cb905b4fcf1d741a746572ef35c3ab"
  end

  def install
    bin.install "synse"
  end

  test do
    system "#{bin}/synse", "version"
  end
end
