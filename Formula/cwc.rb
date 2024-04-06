class Cwc < Formula
  desc "Chat with Code CLI tool"
  homepage "https://github.com/intility/cwc"
  url "https://github.com/Intility/cwc/archive/refs/tags/v0.9.0.tar.gz"
  sha256 "9e52f1ee109e3d496245f4ce1c805a1b266eb091bb3ae8f0cb26e78212b46504"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", "#{bin}/cwc", *std_go_args(ldflags: "-s -w")
  end

  test do
    assert_match(/Use "cwc [command] --help" for more information about a command/, shell_output("#{bin}/cwc -h", 0))
  end
end
