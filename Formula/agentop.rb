require "language/node"

class Agentop < Formula
  desc "Live top-style dashboard for your running AI coding-agent CLI sessions"
  homepage "https://github.com/ktamas77/agentop"
  url "https://registry.npmjs.org/agentop/-/agentop-0.5.4.tgz"
  sha256 "49b4d02f38f112363debffa635e57bce62e11f42fdb2a9f0f1c164915163a40a"
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
