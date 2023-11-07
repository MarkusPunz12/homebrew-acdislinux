class Acdislinux < Formula
  desc "ACDIS PKCS11 Linux"
  homepage "https://www.austriacard.at"
  url "https://github.com/MarkusPunz12/ACDIS-PKCS11/releases/download/1.1.0/linux-1.1.0.tar.gz"
  sha256 "13ba8c88c05a2d59c4a66dd431c66d61c847f94576b351e213e3ea3c91c05eaf"

  bottle do
    root_url "https://github.com/MarkusPunz12/homebrew-acdislinux/releases/download/acdislinux-1.1.0"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "0a14fb863e36061bc757342c52589585c02bbf5f58315bd103dacd99d4e32b9c"
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
