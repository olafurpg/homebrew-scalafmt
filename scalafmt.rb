class Scalafmt < Formula
  desc "Code formatter for Scala."
  homepage "https://github.com/olafurpg/scalafmt"
  url "https://github.com/olafurpg/scalafmt/releases/download/v0.5.0-RC1/scalafmt.tar.gz"
  sha256 "7a407cbf01f2924f117bcd4536ca2a93d7bd81360a6ffa0e792d11533d1b9205"
  version "0.5.0-RC1"

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
