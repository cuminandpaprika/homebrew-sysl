# This file was generated by GoReleaser. DO NOT EDIT.
class Sysl < Formula
  desc "Sysl is a tool which generates code and documentation from system specifications"
  homepage "https://sysl.io/"
  version "0.23.2"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/cuminandpaprika/sysl/releases/download/v0.23.2/sysl_0.23.2_macOS-64bit.tar.gz", :using => CurlDownloadStrategy
    sha256 "64449bf370d2222608499ad40b6d9dff413022426c0277d32328dc4b249fdea7"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/cuminandpaprika/sysl/releases/download/v0.23.2/sysl_0.23.2_Linux-64bit.tar.gz", :using => CurlDownloadStrategy
      sha256 "97e47b157b516cb9269a559242a52fabce757767fce8fa175fdc57fd5c333a9c"
    end
  end
  
  depends_on "go"

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
