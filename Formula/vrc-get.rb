class VrcGet < Formula
  desc "Command-line VPM Client"
  homepage "https://github.com/anatawa12/vrc-get"
  url "https://github.com/anatawa12/vrc-get/archive/refs/tags/v1.6.1.tar.gz"
  sha256 "814f1af23261799ceda4f301cfd062b4e1c05b66464389b2de18865ecf4e3bbb"
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
