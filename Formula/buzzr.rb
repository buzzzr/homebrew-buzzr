class Buzzr < Formula
  desc "Terminal client for Buzz that talks to the relay directly"
  homepage "https://github.com/buzzzr/buzzr"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/buzzzr/buzzr/releases/download/v0.1.1/buzzr-0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "6a282d64a1efc44257859b631141430477ec9fd2a57b7131fbebb1fb95d9fea2"
    end
    on_intel do
      url "https://github.com/buzzzr/buzzr/releases/download/v0.1.1/buzzr-0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "bcf163e3e12cb9c36594bc02aa9c7f1fe817830a1d02ec6286b4142ee7613aa0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/buzzzr/buzzr/releases/download/v0.1.1/buzzr-0.1.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "53549aa72d12e0fe57f724a05306aac5fa9d2b76ab74dbb47d8d660de279cdf4"
    end
    on_intel do
      url "https://github.com/buzzzr/buzzr/releases/download/v0.1.1/buzzr-0.1.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "083f554872d24f09c83b1060b39c0999ba642ee90d4a80b4edae3b201c5706b8"
    end
  end

  def install
    bin.install "buzzr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/buzzr --version")
  end
end
