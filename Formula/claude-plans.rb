class ClaudePlans < Formula
  desc "Standalone viewer for Claude Code plans and project memory"
  homepage "https://github.com/jhlee111/claude_plans"
  url "https://github.com/jhlee111/claude_plans/releases/download/v0.4.0/claude_plans_macos_arm"
  sha256 "4be97bcedd9cf53cedca9d0156bc91d036c7a8d6759aabc9a69ad4367d13404e"
  version "0.4.0"
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
