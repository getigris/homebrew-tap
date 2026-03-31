class IgrisMemory < Formula
  desc "Persistent memory server for AI coding agents (MCP protocol)"
  homepage "https://github.com/getigris/igris-memory"
  version "0.1.0"
  license "Elastic-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/getigris/igris-memory/releases/download/v0.1.0/igris-memory-aarch64-apple-darwin.tar.gz"
      sha256 "6df7520fd70ebc7d80f1a80f7b03e948752962bee349749a27dba79de753dd46"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/getigris/igris-memory/releases/download/v0.1.0/igris-memory-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "21fc60fe343b9b0ca66ec26ceb1584593d51b2a0d0897d53dc732a69f5620a6d"
    elsif Hardware::CPU.arm?
      url "https://github.com/getigris/igris-memory/releases/download/v0.1.0/igris-memory-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a58148ef510b6ef759ce6557c73659d123dd80f830862ef9006c0fda536bdb48"
    end
  end

  def install
    bin.install "igmem"
  end

  test do
    assert_match "igmem", shell_output("#{bin}/igmem --version")
  end
end
