class Acdisp11manager < Formula
 desc "ACDIS PKCS11 Manager Linux"
 homepage "https://www.austriacard.at"
 url "https://github.com/MarkusPunz12/ACDIS-PKCS11/releases/download/1.4.0/linux-p11manager-1.4.0.tar.gz"
 sha256 "dc610e1ec408d6c9322d564173068a1d37d48c992b6bd5160e26ce432826f086"

  bottle do
    root_url "https://github.com/MarkusPunz12/homebrew-acdislinux/releases/download/acdisp11manager-1.4.0"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "44596c3dc4b7b637048a2e6457cb62f66974bb840dea3447d33ff243ceb5c376"
  end
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
