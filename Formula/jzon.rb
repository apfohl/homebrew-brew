class Jzon < Formula
  desc "A Lemon based JSON parser for C"
  homepage "https://github.com/apfohl/jzon/"
  url "https://github.com/apfohl/jzon/archive/v0.3.1.tar.gz"
  sha256 "42ebbe942fb33f4bcbf60b04be6500cae7733070cc78659b83952ec37d221e95"

  head "https://github.com/apfohl/jzon.git"

  def install
    ENV.deparallelize

    system "make", "release"
    system "make", "install", "PREFIX=#{prefix}"
  end
end
