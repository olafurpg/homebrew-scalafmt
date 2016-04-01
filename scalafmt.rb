class Scalafmt < Formula
  desc "Opinionated code formatter for Scala."
  homepage "https://github.com/olafurpg/scalafmt"
  url "https://github.com/olafurpg/scalafmt/releases/download/v0.1.5/scalafmt.tar.gz"
  sha256 "e4f5638ac04ff71a086b50a8bd0d70662d22c10ea084131eba2dc1df6eef48d7"
  version "0.1.5"

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
