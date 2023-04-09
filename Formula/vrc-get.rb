class VrcGet < Formula
  desc "Command-line VPM Client"
  homepage "https://github.com/anatawa12/vrc-get"
  url "https://github.com/anatawa12/vrc-get/archive/v0.2.1.tar.gz"
  sha256 "fc0dc6792f7772ea7d59e45b09287cd76d209acb0bcdf447359964d8967fd75a"
  license "MIT"

  head "https://github.com/anatawa12/vrc-get.git", branch: "master"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", "."
  end

  test do
    assert_match "vrc-get", shell_output("#{bin}/vrc-get --help")
  end
end
