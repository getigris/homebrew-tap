class IgrisMemory < Formula
  desc "Persistent memory server for AI coding agents (MCP protocol)"
  homepage "https://github.com/getigris/igris-memory"
  version "0.2.1"
  license "Elastic-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/getigris/igris-memory/releases/download/v0.2.1/igris-memory-aarch64-apple-darwin.tar.gz"
      sha256 "0c0c7a2f11be0b282e36ffe9437fa3470d974e2eaa25c54abeca89aa3a49df80"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/getigris/igris-memory/releases/download/v0.2.1/igris-memory-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "86e9821599b564a4faa5dd79732131a59f01253d98b88e95725d4deff3d689fd"
    elsif Hardware::CPU.arm?
      url "https://github.com/getigris/igris-memory/releases/download/v0.2.1/igris-memory-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "77753388d9ea91e7d776f658cea11e4eacb7a51e34dac46cf161cbec7e41b57f"
    end
  end

  def install
    bin.install "igmem"
  end

  test do
    assert_match "igmem", shell_output("#{bin}/igmem --version")
  end
end
