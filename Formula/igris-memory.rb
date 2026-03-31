class IgrisMemory < Formula
  desc "Persistent memory server for AI coding agents (MCP protocol)"
  homepage "https://github.com/getigris/igris-memory"
  version "0.1.1"
  license "Elastic-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/getigris/igris-memory/releases/download/v0.1.1/igris-memory-aarch64-apple-darwin.tar.gz"
      sha256 "eab38d9b7ec1876fd38adafa9ec9eb35de875dfbbeb6075420f4a2a820bbf59c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/getigris/igris-memory/releases/download/v0.1.1/igris-memory-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "58479bce8569c6aa7c4c4e704cac604c7c94ce55f0ab553515acc339c7d1767f"
    elsif Hardware::CPU.arm?
      url "https://github.com/getigris/igris-memory/releases/download/v0.1.1/igris-memory-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3764109d7aeaf6b5e5cb2af9c024388cd77f9f21106feded46b65c8b876a77a1"
    end
  end

  def install
    bin.install "igmem"
  end

  test do
    assert_match "igmem", shell_output("#{bin}/igmem --version")
  end
end
