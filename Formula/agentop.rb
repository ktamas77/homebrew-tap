require "language/node"

class Agentop < Formula
  desc "Live top-style dashboard for your running AI coding-agent CLI sessions"
  homepage "https://github.com/ktamas77/agentop"
  url "https://registry.npmjs.org/agentop/-/agentop-0.4.1.tgz"
  sha256 "f2e2dc0043d7a20fa3ce0dc558df3f823bdd8e83a1083a049be4d22ab12a8f4c"
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
