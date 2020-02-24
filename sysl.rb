class Sysl < Formula
  desc "Sysl (pronounced "sizzle") is a system specification language"
  homepage "https://sysl.io"
  url "https://github.com/anz-bank/sysl/archive/v0.6.3.tar.gz"
  sha256 "a0d150a7f4051b1d4739226bd2e859d48e430a66c5591a478ab6697284ed56e5"

  def install
    bin.install "sysl"
  end