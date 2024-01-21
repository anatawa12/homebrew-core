class VrcGet < Formula
  desc "Command-line VPM Client"
  homepage "https://github.com/anatawa12/vrc-get"
  url "https://github.com/anatawa12/vrc-get/archive/refs/tags/v1.5.2.tar.gz"
  sha256 "53026516acf1896b99eeda81d0617371c62f79df2534c14564f1507dacbfc23c"
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
