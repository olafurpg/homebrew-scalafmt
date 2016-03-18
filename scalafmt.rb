class Scalafmt < Formula
  desc "Optinionated code formatter for Scala."
  homepage "https://github.com/olafurpg/scalafmt"
  url "https://github.com/olafurpg/scalafmt/releases/download/v0.1.4/scalafmt.tar.gz"
  sha256 "d0d50e98fa82458e25e2ec23c8cc9e9e28fb0646af92171680d5fcc39c31ad54"
  version "0.1.4"

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
