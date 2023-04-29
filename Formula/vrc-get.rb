class VrcGet < Formula
  desc "Command-line VPM Client"
  homepage "https://github.com/anatawa12/vrc-get"
  url "https://github.com/anatawa12/vrc-get/archive/v1.0.0.tar.gz"
  sha256 "579c9735d7868430b113ce2d0882944314d4ca815ea540e5aa529f02be0c7563"
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
