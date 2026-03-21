class ClaudePlans < Formula
  desc "Standalone viewer for Claude Code plans and project memory"
  homepage "https://github.com/jhlee111/claude_plans"
  url "https://github.com/jhlee111/claude_plans/releases/download/v0.3.0/claude_plans_macos_arm"
  sha256 "0ced0e66cbdb6eed5ca176bdac37e25e21f5db8ddf7f5ebf9ae0fc0b05a4c191"
  version "0.3.0"
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
