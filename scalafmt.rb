class Scalafmt < Formula
  desc "Code formatter for Scala."
  homepage "https://github.com/olafurpg/scalafmt"
  url "https://github.com/olafurpg/scalafmt/releases/download/v0.3.0-RC1/scalafmt.tar.gz"
  sha256 "3ac819b5f020fb67a15ede491775558ec8fd82774a0d8bde28ff5a0cff1ce1dc"
  version "0.3.0-RC1"

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
