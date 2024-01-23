class Acdisp11manager < Formula
 desc "ACDIS PKCS11 Manager Linux"
 homepage "https://www.austriacard.at"
 url "https://github.com/MarkusPunz12/ACDIS-PKCS11/releases/download/1.5.1/linux-p11manager-1.5.1.tar.gz"
 sha256 "8261e85ceea6dd26348a512d6f85d1ec55f50c9567039a71c375e2db56ef330f"
 depends_on "acdislinux"
 on_linux do
 def install
 inreplace "acdis-pkcs11-manager.desktop", "##PREFIX##", "#{prefix}"
 prefix.install Dir["*"]
 bin.install_symlink prefix/"PKCS11Manager"
 (share/"applications").install_symlink prefix/"acdis-pkcs11-manager.desktop"
 end
 end
 test do
 system "true"
 end
end
