class Scalafmt < Formula
  desc "Code formatter for Scala."
  homepage "https://github.com/olafurpg/scalafmt"
  url "https://github.com/olafurpg/scalafmt/releases/download/v0.4.4/scalafmt.tar.gz"
  sha256 "4d0be4b49ab1a26a2d2fe73c5b4fff8d6e81556d1fa8dbb4cb37001753b0189f"
  version "0.4.4"

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
