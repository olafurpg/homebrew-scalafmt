class Scalafmt < Formula
  desc "Optinionated code formatter for Scala."
  homepage "https://github.com/olafurpg/scalafmt"
  url "https://github.com/olafurpg/scalafmt/releases/download/v0.1.3/scalafmt.tar.gz"
  sha256 "9cb8cb2c4920ddfe81c37ac38d5264f83052cbb049c15a0267864b346bcb4a3f"
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
