class Scalafmt < Formula
  desc "Code formatter for Scala."
  homepage "https://github.com/olafurpg/scalafmt"
  url "https://github.com/olafurpg/scalafmt/releases/download/v0.4.5/scalafmt.tar.gz"
  sha256 "edfc65716bc9541e0a9da5b88d378fbddb39c6756bf349aed63e9d177b879407"
  version "0.4.5"

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
