class Acdisp11manager < Formula
 desc "ACDIS PKCS11 Manager Linux"
 homepage "https://www.austriacard.at"
 url "https://github.com/MarkusPunz12/ACDIS-PKCS11/releases/download/1.4.0/linux-p11manager-1.4.0.tar.gz"
 sha256 "af5404c7ad3ba8e93dc0f0459f5c920399df3031cd5aa795be2bb69fe5b6c5f9"
 depends_on "acdislinux"
 on_linux do
 def install
 inreplace "acdis-pkcs11-manager.desktop", "##PREFIX##", "#{prefix}"
 prefix.install Dir["*"]
 bin.install_symlink prefix/"PKCS11Manager"
 end
 end
 test do
 system "true"
 end
end
