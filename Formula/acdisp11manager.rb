class Acdisp11manager < Formula
 desc "ACDIS PKCS11 Manager Linux"
 homepage "https://www.austriacard.at"
 url "https://github.com/MarkusPunz12/ACDIS-PKCS11/releases/download/1.5.0/linux-p11manager-1.5.0.tar.gz"
 sha256 "f8aad204a68767eb0c3cb6984db639172c11fa99eae0192d5edba33406944ff4"

  bottle do
    root_url "https://github.com/MarkusPunz12/homebrew-acdislinux/releases/download/acdisp11manager-1.5.0"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "afdc1e97de44e865f8a1b7a62ea20e4a2103029e4f715b553353155ae73d62c2"
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
