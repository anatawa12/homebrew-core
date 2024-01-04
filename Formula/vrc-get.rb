class VrcGet < Formula
  desc "Command-line VPM Client"
  homepage "https://github.com/anatawa12/vrc-get"
  url "https://github.com/anatawa12/vrc-get/archive/v1.4.2.tar.gz"
  sha256 "f2ee500352423395496ef8a2739e7fac0d97b0bdb1c43e74213bfd494c7e810f"
  license "MIT"

  head "https://github.com/anatawa12/vrc-get.git", branch: "master"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", "vrc-get"
  end

  test do
    assert_match "vrc-get", shell_output("#{bin}/vrc-get --help")
  end
end
