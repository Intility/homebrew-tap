class Cwc < Formula
  desc "Chat with Code CLI tool"
  homepage "https://github.com/intility/cwc"
  url "https://github.com/Intility/cwc/archive/refs/tags/v0.7.2.tar.gz"
  sha256 "87b640048c36f209dbd9ec7e5a8390a0079b079be2e2665a0b34378724867bb2"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", "#{bin}/cwc", *std_go_args(ldflags: "-s -w")
  end

  test do
    assert_match /Use "cwc [command] --help" for more information about a command/, shell_output("#{bin}/cwc -h", 0)
  end
end
