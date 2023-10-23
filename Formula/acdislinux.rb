class Acdislinux < Formula
  desc "ACDIS PKCS11 Linux"
  homepage "https://www.austriacard.at"
  url "https://github.com/MarkusPunz12/ACDIS-PKCS11/releases/download/1.0.0/linux-1.0.0.tar.gz"
  sha256 "d57e7b2ad6326d61d2f12aef3d9059c2763c6f9fc7684773722b429f56cd252a"

  bottle do
    root_url "https://github.com/MarkusPunz12/homebrew-acdislinux/releases/download/acdislinux-1.0.0"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "e19bcf6968e12a9c8df28cd24f56a266945703f22cb514261f5e0275ee5e1b10"
  end
  on_linux do
    def install
      prefix.install Dir["*"]
      lib.install_symlink prefix/"libacdis-pkcs11.so"
    end
  end

  test do
    system "true"
  end
end
