class Acdislinux < Formula
  desc "ACDIS PKCS11 Linux"
  homepage "https://www.austriacard.at"
  url "https://github.com/MarkusPunz12/ACDIS-PKCS11/releases/download/1.4.0/linux-p11module-1.4.0.tar.gz"
  sha256 "4593da3b69ba92641562acef815fad1c066a9f7ecf7b8030bafcbfd61756f314"

  bottle do
    root_url "https://github.com/MarkusPunz12/homebrew-acdislinux/releases/download/acdislinux-1.4.0"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "027fe9ce165462e12e79b552b6951b4394a85e2c8a4b5ec426cfd22c7c0387da"
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
