class Scalafmt < Formula
  desc "Code formatter for Scala."
  homepage "https://github.com/olafurpg/scalafmt"
  url "https://github.com/olafurpg/scalafmt/releases/download/v0.5.0-RC4/scalafmt.tar.gz"
  sha256 "5c8b3bc82a87d614cb7e45acb56957a15c6492834474f5256d8d955695d366fb"
  version "0.5.0-RC4"

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
