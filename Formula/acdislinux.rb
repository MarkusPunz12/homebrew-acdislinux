class Acdislinux < Formula
  desc "ACDIS PKCS11 Linux"
  homepage "https://www.austriacard.at"
  url "https://github.com/MarkusPunz12/ACDIS-PKCS11/releases/download/1.5.0/linux-p11module-1.5.0.tar.gz"
  sha256 "744f6512efdcd68b9da5c0c1250a2339e7ad2222bea92636f46bfce284dabd5b"
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
