require 'formula'

class Usepackage < Formula
  homepage 'http://sourceforge.net/projects/usepackage/'
  url 'http://downloads.sourceforge.net/project/usepackage/Stable/usepackage-1.8/usepackage-1.8.tar.gz'
  version '1.8'
  sha1 '88e276a163b1dac2795c49bccd449c27e5ddd396'

  def install
    system "./configure", "--mandir=#{man}", "--prefix=#{prefix}"
    system "make install" # if this fails, try separate make/make install steps
  end

  def test
    system "usepackage", "-l"
  end
end
