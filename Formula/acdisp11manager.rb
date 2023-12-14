class Acdisp11manager < Formula
 desc "ACDIS PKCS11 Manager Linux"
 homepage "https://www.austriacard.at"
 url "https://github.com/MarkusPunz12/ACDIS-PKCS11/releases/download/1.4.0/linux-p11manager-1.4.0.tar.gz"
 sha256 "90c70afaf7240073feec3cb017824090cfbd3e1c6d2619c634343e3d34b9b9d2"
 depends_on "acdislinux"
 on_linux do
 def install
 prefix.install Dir["*"]
 bin.install_symlink prefix/"PKCS11Manager"
 end
 end
 test do
 system "true"
 end
end
