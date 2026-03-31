class IgrisMemory < Formula
  desc "Persistent memory server for AI coding agents (MCP protocol)"
  homepage "https://github.com/getigris/igris-memory"
  version "0.1.2"
  license "Elastic-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/getigris/igris-memory/releases/download/v0.1.2/igris-memory-aarch64-apple-darwin.tar.gz"
      sha256 "8d4a78a6bbddec46f31f19654b7287f464bbae6237648c433f10619d02913b79"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/getigris/igris-memory/releases/download/v0.1.2/igris-memory-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "aea19c894060b5526706acc3fa87e3439672a727edc0686882df57be993b1a08"
    elsif Hardware::CPU.arm?
      url "https://github.com/getigris/igris-memory/releases/download/v0.1.2/igris-memory-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e649f6e5187ee4f51cb5b765aa63ea976197b184b30f579ffd0ac7c9d1c4d999"
    end
  end

  def install
    bin.install "igmem"
  end

  test do
    assert_match "igmem", shell_output("#{bin}/igmem --version")
  end
end
