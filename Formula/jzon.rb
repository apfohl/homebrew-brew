class Jzon < Formula
  desc "A Lemon based JSON parser for C"
  homepage "https://github.com/apfohl/jzon/"
  url "https://github.com/apfohl/jzon/archive/v1.0.0.tar.gz"
  sha256 "f596f0c4d0567c38194a0ee2e904312ebf7afba4c5dbb18119fa0a86f47ca5b2"

  head "https://github.com/apfohl/jzon.git"

  def install
    ENV.deparallelize

    system "make", "release"
    system "make", "install", "PREFIX=#{prefix}"
  end
end
