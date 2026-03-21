class ClaudePlans < Formula
  desc "Standalone viewer for Claude Code plans and project memory"
  homepage "https://github.com/jhlee111/claude_plans"
  url "https://github.com/jhlee111/claude_plans/releases/download/v0.1.5/claude_plans_macos_arm"
  sha256 "31a031ffe7178c65aa60422f1193a02ff1cadc388bf6c4637f43eab475c0b0d0"
  version "0.1.5"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "claude_plans_macos_arm" => "claude-plans"
  end

  test do
    assert_predicate bin/"claude-plans", :executable?
  end
end
