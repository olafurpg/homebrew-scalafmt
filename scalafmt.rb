class Scalafmt < Formula
  desc "Code formatter for Scala."
  homepage "https://github.com/scalameta/scalafmt"
  url "https://github.com/olafurpg/scalafmt/releases/download/v0.6.4/scalafmt.tar.gz"
  sha256 "4112e971c35761ded03d956be0549a799f5452a636356665484d43a5f694136c"
  version "0.6.4"

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
