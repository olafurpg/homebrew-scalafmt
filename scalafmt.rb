require 'formula'

class Scalafmt < Formula
  head 'git://github.com/scalameta/scalafmt.git'
  def install
    bin.install 'scalafmt'
  end
end
