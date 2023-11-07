class Acdislinux < Formula
  desc "ACDIS PKCS11 Linux"
  homepage "https://www.austriacard.at"
  url "https://github.com/MarkusPunz12/ACDIS-PKCS11/releases/download/1.1.0/linux-1.1.0.tar.gz"
  sha256 "15ac348c5d9194d4a856d397cd9e4f6e78c69382c5d64299c5e86765501ae1b7"

  bottle do
    root_url "https://github.com/MarkusPunz12/homebrew-acdislinux/releases/download/acdislinux-1.1.0"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "5fc2e19efde42a63609892f890772a160c36e376c59b51696fbc3f5e7fe5a931"
  end
  on_linux do
    def install
      prefix.install Dir["*"]
      lib.install_symlink prefix/"libacdis-pkcs11.so"
    end
  end

  test do
    system "true"
  end
end
