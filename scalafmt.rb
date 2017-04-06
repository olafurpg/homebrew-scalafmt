class Scalafmt < Formula
  desc "Code formatter for Scala."
  homepage "https://github.com/scalameta/scalafmt"
  url "https://github.com/scalameta/scalafmt/releases/download/v0.6.8/scalafmt.tar.gz"
  sha256 "420ba061f825b6a35e25282d95dd57c17bbbf0fb7dbd247fe81dd2327bb64ac5"
  version "0.6.8"

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
