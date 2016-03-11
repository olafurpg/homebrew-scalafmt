class Scalafmt < Formula
  desc "Optinionated code formatter for Scala."
  homepage "https://github.com/olafurpg/scalafmt"
  url "https://github.com/olafurpg/scalafmt/releases/download/v0.1.3/scalafmt.tar.gz"
  sha256 "3e11cd4fa0001a974cc6ded5bdfb8303d4ad507b22a97d971820beb894f38450"
  version "0.1.3"

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
