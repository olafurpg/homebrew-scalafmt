require 'formula'

class Scalafix < Formula
  head 'git://github.com/scalacenter/scalafix.git'
  def install
    bin.install 'scalafix'
  end
end
