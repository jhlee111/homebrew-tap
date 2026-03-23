class ClaudePlans < Formula
  desc "Standalone viewer for Claude Code plans and project memory"
  homepage "https://github.com/jhlee111/claude_plans"
  url "https://github.com/jhlee111/claude_plans/releases/download/v0.6.1/claude_plans_macos_arm"
  sha256 "363dc0172d181c208ed4a4f1d8ed5519970fb3e711f53e51684b1ae0989f9506"
  version "0.6.1"
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
