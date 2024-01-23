class Acdisp11manager < Formula
 desc "ACDIS PKCS11 Manager Linux"
 homepage "https://www.austriacard.at"
 url "https://github.com/MarkusPunz12/ACDIS-PKCS11/releases/download/1.5.1/linux-p11manager-1.5.1.tar.gz"
 sha256 "d427bd329f39d1b708512cf86b7bf305a7024370e3a4b2b3b189c2561462a537"

  bottle do
    root_url "https://github.com/MarkusPunz12/homebrew-acdislinux/releases/download/acdisp11manager-1.5.1"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "e6d2caace76b1a49b54b092bdc11376c1bd11961be7c81c2013e1086addb1c11"
  end
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
