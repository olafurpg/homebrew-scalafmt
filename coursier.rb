require 'formula'

class Coursier < Formula
  head 'git://github.com/coursier/coursier.git'

  def install
    bin.install 'coursier'
  end
end
