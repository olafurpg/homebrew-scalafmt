class Scalafmt < Formula
  desc "Opinionated code formatter for Scala."
  homepage "https://github.com/olafurpg/scalafmt"
  url "https://github.com/olafurpg/scalafmt/releases/download/v0.2.5/scalafmt.tar.gz"
  sha256 "978d4333ff479909216c9bb5df1f306c7025906e3abc1b92726db5c75b2f891e"
  version "0.2.5"

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
