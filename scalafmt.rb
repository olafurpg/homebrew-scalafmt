class Scalafmt < Formula
  desc "Code formatter for Scala."
  homepage "https://github.com/olafurpg/scalafmt"
  url "https://github.com/olafurpg/scalafmt/releases/download/v0.5.0/scalafmt.tar.gz"
  sha256 "2e7108fe16a904a7fbd09123ca2bf760aad29ff6321a1b7dbf140c35169f8731"
  version "0.5.0"

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
