class Scalafmt < Formula
  desc "Code formatter for Scala."
  homepage "https://github.com/olafurpg/scalafmt"
  url "https://github.com/olafurpg/scalafmt/releases/download/v0.5.0-RC2/scalafmt.tar.gz"
  sha256 "9c5590cdde0967c758b50b31b75344fb56d4a2b5604d091ad9001094f46d42e0"
  version "0.5.0-RC2"

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
