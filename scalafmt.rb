class Scalafmt < Formula
  desc "Code formatter for Scala."
  homepage "https://github.com/scalameta/scalafmt"
  url "https://github.com/scalameta/scalafmt/releases/download/v0.6.3/scalafmt.tar.gz"
  sha256 "eb5fff3f7daafb5be5a85435ad70c3c7c0fd3f392e46b2d99da135e33b6cb4c5"
  version "0.6.3"

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
