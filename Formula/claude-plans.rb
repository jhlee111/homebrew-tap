class ClaudePlans < Formula
  desc "Standalone viewer for Claude Code plans and project memory"
  homepage "https://github.com/jhlee111/claude_plans"
  url "https://github.com/jhlee111/claude_plans/releases/download/v0.1.3/claude_plans_macos_arm"
  sha256 "2aa6df4699b367294ec6e47a1d4ca3f762221bf7c00f8714e3a1b107bc41ccde"
  version "0.1.3"
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
