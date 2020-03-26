# This file was generated by GoReleaser. DO NOT EDIT.
class Sysl < Formula
  desc "Sysl is a tool which generates code and documentation from system specifications"
  homepage "https://sysl.io/"
  version "0.12.0"
  bottle :unneeded

  if OS.mac?
    url "http://github.com/cuminandpaprika/sysl/releases/v0.12.0/sysl_0.12.0_macOS-64bit.tar.gz", :using => CurlDownloadStrategy
    sha256 "7f80f75eb4133b557e836388cb49065bf01446d352077eb30da1f7e6a5eed0fa"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "http://github.com/cuminandpaprika/sysl/releases/v0.12.0/sysl_0.12.0_Linux-64bit.tar.gz", :using => CurlDownloadStrategy
      sha256 "79d82e11e77161d97574254f52231bb9e15fd6759f4466906fb732ceff9fbd6f"
    end
  end
  
  depends_on "go"
  depends_on "git"

  def install
    bin.install "sysl"
  end

  def caveats; <<~EOS
    How to use this binary
  EOS
  end

  test do
    system "#{bin}/sysl --version"
  end
end
