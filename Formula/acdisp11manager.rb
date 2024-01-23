class Acdisp11manager < Formula
 desc "ACDIS PKCS11 Manager Linux"
 homepage "https://www.austriacard.at"
 url "https://github.com/MarkusPunz12/ACDIS-PKCS11/releases/download/1.5.1/linux-p11manager-1.5.1.tar.gz"
 sha256 "196e9ef665f7928e657e18d26a64d08a7aed771808d20ef0fcd1641306e2c85b"

  bottle do
    root_url "https://github.com/MarkusPunz12/homebrew-acdislinux/releases/download/acdisp11manager-1.5.1"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "be6b53658f63fb16c67805394a7b6ed092e3668ace4100df031351c7c2eb7bb9"
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
