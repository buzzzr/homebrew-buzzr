class Buzzr < Formula
  desc "Terminal client for Buzz that talks to the relay directly"
  homepage "https://github.com/buzzzr/buzzr"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/buzzzr/buzzr/releases/download/v0.1.0/buzzr-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "17355235af905c3feff9adf7fd11d3237a6b0a7199331f0a668b05485378d527"
    end
    on_intel do
      url "https://github.com/buzzzr/buzzr/releases/download/v0.1.0/buzzr-0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "ff2ea827b680ac295db69a64413aab7408f8bce7aaa0d6ad7d9f3d4f948dc819"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/buzzzr/buzzr/releases/download/v0.1.0/buzzr-0.1.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0bdd01e102bab3f310ef4fbd185830e230dc4421987081a186ac994628722a1a"
    end
    on_intel do
      url "https://github.com/buzzzr/buzzr/releases/download/v0.1.0/buzzr-0.1.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "167fa044c88125cfcb3c59546b269334439e53bf4335caff631d8bec1dc6ae60"
    end
  end

  def install
    bin.install "buzzr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/buzzr --version")
  end
end
