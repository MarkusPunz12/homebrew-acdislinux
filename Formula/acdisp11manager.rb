class Acdisp11manager < Formula
 desc "ACDIS PKCS11 Manager Linux"
 homepage "https://www.austriacard.at"
 url "https://github.com/MarkusPunz12/ACDIS-PKCS11/releases/download/1.4.0/linux-p11manager-1.4.0.tar.gz"
 sha256 "c43cdb8492fcc2e7570c7d9638e446008038f8ec660e56223c8a96dd1b789127"

  bottle do
    root_url "https://github.com/MarkusPunz12/homebrew-acdislinux/releases/download/acdisp11manager-1.4.0"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "2d459c88240a23b769ce6403991fcd6d82bc02e742f388065ebd3eb2612706aa"
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
