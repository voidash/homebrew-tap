class Zap < Formula
  desc "Fast, encrypted peer-to-peer file transfers"
  homepage "https://zapper.cloud"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/voidash/zapper.cloud/releases/download/v0.3.0/zap-darwin-arm64"
      sha256 "cc6bf490262023b4eed296b69fede00334f928d64f6b705d7c118d4d27502a02"

      def install
        bin.install "zap-darwin-arm64" => "zap"
      end
    else
      url "https://github.com/voidash/zapper.cloud/releases/download/v0.3.0/zap-darwin-x86_64"
      sha256 "5e0f351ebfdf9235cc5e0307ce288297875339be7e468e1311f248a0aa609264"

      def install
        bin.install "zap-darwin-x86_64" => "zap"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/voidash/zapper.cloud/releases/download/v0.3.0/zap-linux-arm64"
      sha256 "af3087507d2f1f15221bf800ad9cbd1f821fb47e7c19e4f1ced84f7f1318f31e"

      def install
        bin.install "zap-linux-arm64" => "zap"
      end
    else
      url "https://github.com/voidash/zapper.cloud/releases/download/v0.3.0/zap-linux-x86_64"
      sha256 "f48d7df3bb37ed2c51177d9c162c048d397052f70f1a0df6cb0419d91920238d"

      def install
        bin.install "zap-linux-x86_64" => "zap"
      end
    end
  end

  test do
    system "#{bin}/zap", "--help"
  end
end
