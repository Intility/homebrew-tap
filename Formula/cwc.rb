class Cwc < Formula
  desc "Chat with Code CLI tool"
  homepage "https://github.com/intility/cwc"
  url "https://github.com/Intility/cwc/archive/refs/tags/v0.8.0.tar.gz"
  sha256 "a43d766f4a00c3f339545a4dbd07890c182b5ddae238ca8cc303d34a169cd0f1"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", "#{bin}/cwc", *std_go_args(ldflags: "-s -w")
  end

  test do
    assert_match /Use "cwc [command] --help" for more information about a command/, shell_output("#{bin}/cwc -h", 0)
  end
end
