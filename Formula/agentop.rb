require "language/node"

class Agentop < Formula
  desc "Live top-style dashboard for your running AI coding-agent CLI sessions"
  homepage "https://github.com/ktamas77/agentop"
  url "https://registry.npmjs.org/agentop/-/agentop-0.5.8.tgz"
  sha256 "859a894cf51c5ad1ced4693979fb595d32451b82fddba17baf1fabd83c302af5"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "agentop #{version}", shell_output("#{bin}/agentop --version")
  end
end
