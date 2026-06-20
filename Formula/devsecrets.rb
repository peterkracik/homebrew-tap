class Devsecrets < Formula
  desc "Terminal utility for managing local development secrets across projects and environments"
  homepage "https://github.com/peterkracik/dev-secrets"
  version "0.0.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/peterkracik/dev-secrets/releases/download/v0.0.2/devsecrets-aarch64-apple-darwin.tar.gz"
      sha256 "60523a2a49f61e2a213712948cbe30d4696e600a142117a0e87b728d3e01cbbf"
    end
    on_intel do
      url "https://github.com/peterkracik/dev-secrets/releases/download/v0.0.2/devsecrets-x86_64-apple-darwin.tar.gz"
      sha256 "7a75f38197b26d856593fac8374ce25cc5c765875faf7f2d0baa876a78f6de30"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/peterkracik/dev-secrets/releases/download/v0.0.2/devsecrets-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a3ea630f894902030e33f0d3b81a1d4d4028a41ce3af7157cb09e15252f4e3a0"
    end
  end

  def install
    bin.install "devsecrets"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/devsecrets --version")
  end
end
