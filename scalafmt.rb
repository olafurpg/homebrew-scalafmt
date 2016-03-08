class Scalafmt < Formula
  desc "Optinionated code formatter for Scala."
  homepage "https://github.com/olafurpg/scalafmt"
  url "https://github.com/olafurpg/scalafmt/releases/download/v0.1.1/scalafmt.tar.gz"
  sha256 "8b0a100fd47161d18d9ddb3a328b8d76d188eb3c98065e5198a50b85229c67a2"
  version "0.1.1"

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
