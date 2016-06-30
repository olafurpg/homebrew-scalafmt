class Scalafmt < Formula
  desc "Code formatter for Scala."
  homepage "https://github.com/olafurpg/scalafmt"
  url "https://github.com/olafurpg/scalafmt/releases/download/v0.2.9/scalafmt.tar.gz"
  sha256 "366296b1213de1fa682226dd3da67d9a4697bdbfcd4d7b1de96d0471f07e7f0b"
  version "0.2.9"

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
