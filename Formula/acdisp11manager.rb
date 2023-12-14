class Acdisp11manager < Formula
 desc "ACDIS PKCS11 Manager Linux"
 homepage "https://www.austriacard.at"
 url "https://github.com/MarkusPunz12/ACDIS-PKCS11/releases/download/1.4.0/linux-p11manager-1.4.0.tar.gz"
 sha256 "1e755e2788c630ae84cf9d6943f9b838c9aeb9825aa6b20b333d9201cedee00e"
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
