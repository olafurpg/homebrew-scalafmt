class Scalafmt < Formula
  desc "Opinionated code formatter for Scala."
  homepage "https://github.com/olafurpg/scalafmt"
  url "https://github.com/olafurpg/scalafmt/releases/download/v0.2.1/scalafmt.tar.gz"
  sha256 "d385ad34e557befaa602b02e3a3ab2aad1915c4c1f8373a931759f597ebd0c33"
  version "0.2.1"

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
