class IgrisMemory < Formula
  desc "Persistent memory server for AI coding agents (MCP protocol)"
  homepage "https://github.com/getigris/igris-memory"
  version "0.2.0"
  license "Elastic-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/getigris/igris-memory/releases/download/v0.2.0/igris-memory-aarch64-apple-darwin.tar.gz"
      sha256 "cdbbb8a1a2d4332979e890016ad2a6c15b0202ad692ab096718d6a109ba14e77"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/getigris/igris-memory/releases/download/v0.2.0/igris-memory-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b6d16c42a7c330131d38c70b3347466e251d0200400ab00b84999c61ea5ea643"
    elsif Hardware::CPU.arm?
      url "https://github.com/getigris/igris-memory/releases/download/v0.2.0/igris-memory-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "75c79c66f0c0200b5bb46f62bdf3b612c04ea097e9028c71d72f76ffc3c69f7c"
    end
  end

  def install
    bin.install "igmem"
  end

  test do
    assert_match "igmem", shell_output("#{bin}/igmem --version")
  end
end
