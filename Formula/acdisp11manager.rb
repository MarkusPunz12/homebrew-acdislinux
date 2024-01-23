class Acdisp11manager < Formula
 desc "ACDIS PKCS11 Manager Linux"
 homepage "https://www.austriacard.at"
 url "https://github.com/MarkusPunz12/ACDIS-PKCS11/releases/download/1.5.1/linux-p11manager-1.5.1.tar.gz"
 sha256 "7315301d65df664f47632c7117b64bbe46c39db27282e582a3ac51dfdea43cdc"

  bottle do
    root_url "https://github.com/MarkusPunz12/homebrew-acdislinux/releases/download/acdisp11manager-1.5.1"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "2403eaa2c951e7888ea77dff372034cebd01e9ab60c9afab92151fe926d79348"
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
