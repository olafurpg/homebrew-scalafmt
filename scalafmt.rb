# Documentation: https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/homebrew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Scalafmt < Formula
  desc "Optinionated code formatter for Scala."
  homepage "https://github.com/olafurpg/scalafmt"
  url "https://github.com/olafurpg/scalafmt/releases/download/v0.1.0-RC2/scalafmt.tar.gz"
  sha256 "177ccce5d3099a74cac18c96b7db2f7fd6b1d13684e31104b0170db90116a544"
  version "0.1.0-RC2"

  def install
    prefix.install "core/target/scala-2.11/scalafmt.jar"
    system "./configure"
    inreplace "scalafmt", "PATH_TO", prefix
    bin.install "scalafmt"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test scalafmt`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
