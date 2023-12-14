class Acdisp11manager < Formula
 desc "ACDIS PKCS11 Manager Linux"
 homepage "https://www.austriacard.at"
 url "https://github.com/MarkusPunz12/ACDIS-PKCS11/releases/download/1.4.0/linux-p11manager-1.4.0.tar.gz"
 sha256 "ea678c56655b502579424c25a4821478c09e3e3c5870d2674e55973b7b92efaf"

  bottle do
    root_url "https://github.com/MarkusPunz12/homebrew-acdislinux/releases/download/acdisp11manager-1.4.0"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "eec01ac41a4a0e26ea1ad2ea61da0a709d20182739a7c29173b77e2b3c9dccdc"
  end
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
