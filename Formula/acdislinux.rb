class Acdislinux < Formula
  desc "ACDIS PKCS11 Linux"
  homepage "https://www.austriacard.at"
  url "https://github.com/MarkusPunz12/ACDIS-PKCS11/releases/download/1.5.1/linux-p11module-1.5.1.tar.gz"
  sha256 "fbc0150762c6164a26c1d9dfbb73625e39508349dc712463113f4b519febdfbe"

  bottle do
    root_url "https://github.com/MarkusPunz12/homebrew-acdislinux/releases/download/acdislinux-1.5.1"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "850fea7f172cb37c4a8b94470764aa66fd687d9fccd5d4116c14904c9cfba511"
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
