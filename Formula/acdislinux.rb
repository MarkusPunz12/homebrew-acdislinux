class Acdislinux < Formula
  desc "ACDIS PKCS11 Linux"
  homepage "https://www.austriacard.at"
  url "https://github.com/MarkusPunz12/ACDIS-PKCS11/releases/download/1.5.0/linux-p11module-1.5.0.tar.gz"
  sha256 "7a4c35d85b08edb7fe0dbc68c5c589e84cfed517546f8d142bc546b83b0b5018"

  bottle do
    root_url "https://github.com/MarkusPunz12/homebrew-acdislinux/releases/download/acdislinux-1.5.0"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "8f534cade9e00a9975e60e6f0a1ef8b5fc4f7cf429259dbddda98d091d5d5653"
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
