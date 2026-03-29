class ClaudePlans < Formula
  desc "Standalone viewer for Claude Code plans and project memory"
  homepage "https://github.com/jhlee111/claude_plans"
  url "https://github.com/jhlee111/claude_plans/releases/download/v0.8.3/claude_plans_macos_arm"
  sha256 "0a0e68c385d605b26f7c3aa2b636dc9547069fbdedd43108542bfb07b2910005"
  version "0.8.3"
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
