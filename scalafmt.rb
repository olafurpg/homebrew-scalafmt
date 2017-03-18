class Scalafmt < Formula
  desc "Code formatter for Scala."
  homepage "https://github.com/scalameta/scalafmt"
  url "https://github.com/scalameta/scalafmt/releases/download/v0.6.5/scalafmt.tar.gz"
  sha256 "f65f9f86929897ecd83660f8a67b4a0971a4fe087a16e137878df04bf36c22f9"
  version "0.6.5"

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
