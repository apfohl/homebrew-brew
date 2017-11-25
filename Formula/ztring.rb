class Ztring < Formula
  desc "A dynamic string library for C"
  homepage "https://github.com/apfohl/ztring/"
  url "https://github.com/apfohl/ztring/archive/v0.1.0.tar.gz"
  sha256 "9617defbbd515c851b0be63ed3081c66ce295978b2f269920b050748c6dcef18"

  head "https://github.com/apfohl/ztring.git"

  def install
    ENV.deparallelize

    system "make", "release"
    system "make", "install", "PREFIX=#{prefix}"
  end
end
