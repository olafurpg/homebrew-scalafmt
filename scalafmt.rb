class Scalafmt < Formula
  desc "Code formatter for Scala."
  homepage "https://github.com/olafurpg/scalafmt"
  url "https://github.com/olafurpg/scalafmt/releases/download/v0.5.0-RC3/scalafmt.tar.gz"
  sha256 "de7e08171fb8f57d6f562469d9879acf726ae1c475f96d113f77511f6aac2fa6"
  version "0.5.0-RC3"

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
