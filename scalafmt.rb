class Scalafmt < Formula
  desc "Opinionated code formatter for Scala."
  homepage "https://github.com/olafurpg/scalafmt"
  url "https://github.com/olafurpg/scalafmt/releases/download/v0.2.4/scalafmt.tar.gz"
  sha256 "500cf7cb3ed610c86fd67561a3b7657996995d441d982aca0c7d9d7305ca98a8"
  version "0.2.4"

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
