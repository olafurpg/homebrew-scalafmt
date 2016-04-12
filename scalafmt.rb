class Scalafmt < Formula
  desc "Opinionated code formatter for Scala."
  homepage "https://github.com/olafurpg/scalafmt"
  url "https://github.com/olafurpg/scalafmt/releases/download/v0.2.0/scalafmt.tar.gz"
  sha256 "f1b75a9040dec97a8555cb8ce11e11d740c4d701c6185c2c91aa0646ee965cac"
  version "0.2.0"

  def install
    prefix.install "cli/target/scala-2.11/scalafmt.jar"
    system "./bin/configure"
    inreplace "bin/scalafmt", "PATH_TO", prefix
    bin.install "bin/scalafmt"
  end

  test do
    system "false"
  end
end
