require "language/node"

class Agentop < Formula
  desc "Live top-style dashboard for your running AI coding-agent CLI sessions"
  homepage "https://github.com/ktamas77/agentop"
  url "https://registry.npmjs.org/agentop/-/agentop-0.5.6.tgz"
  sha256 "346c2c014abc13a835f89bf0e757e078a3e3bcb68a19d5d554783ba7469349e5"
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
