class Scalafmt < Formula
  desc "Code formatter for Scala."
  homepage "https://github.com/scalameta/scalafmt"
  url "https://github.com/scalameta/scalafmt/releases/download/v0.7.0-RC1/scalafmt.tar.gz"
  sha256 "0c1ff94acfe3fc996a6bf6fbadc022a8dd4034300f47ad369fd8eabd9c30cad9"
  version "0.7.0-RC1"

  def install
    prefix.install "scalafmt-cli/target/scala-2.12/scalafmt.jar"
    system "./bin/configure"
    inreplace "bin/scalafmt", "PATH_TO", prefix
    bin.install "bin/scalafmt"
  end

  test do
    system "false"
  end
end
