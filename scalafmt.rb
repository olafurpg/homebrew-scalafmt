class Scalafmt < Formula
  desc "Code formatter for Scala."
  homepage "https://github.com/scalameta/scalafmt"
  url "https://github.com/scalameta/scalafmt/releases/download/v0.6.7/scalafmt.tar.gz"
  sha256 "b03ab83c01834dacf7bf9b5165a8c028f4f027eafb688cf1d14400d48b225d88"
  version "0.6.7"

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
