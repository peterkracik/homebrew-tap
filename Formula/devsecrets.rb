class Devsecrets < Formula
  desc "Terminal utility for managing local development secrets across projects and environments"
  homepage "https://github.com/peterkracik/dev-secrets"
  version "0.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/peterkracik/dev-secrets/releases/download/v0.0.1/devsecrets-aarch64-apple-darwin.tar.gz"
      sha256 "4a3c87565a7fda59926045094b649ce8c11cd0ad470265a8fd714a2b189567bc"
    end
    on_intel do
      url "https://github.com/peterkracik/dev-secrets/releases/download/v0.0.1/devsecrets-x86_64-apple-darwin.tar.gz"
      sha256 "0b6563cec2a3c9c3c420e64e2625c874726526e32b53229d190a2c669273411b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/peterkracik/dev-secrets/releases/download/v0.0.1/devsecrets-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "52ac1cf86c7681d73779d1816032c9a195e42abdba413218206e32f43899fff2"
    end
  end

  def install
    bin.install "devsecrets"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/devsecrets --version")
  end
end
