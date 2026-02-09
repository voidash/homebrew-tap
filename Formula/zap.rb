class Zap < Formula
  desc "Fast, encrypted peer-to-peer file transfers"
  homepage "https://zapper.cloud"
  version "0.8.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/voidash/zapper.cloud/releases/download/v0.8.3/zap-darwin-arm64"
      sha256 "e5daae2728b828e4a4969f9a9200b5a917e4946e6e7972eb71164ed95d9aa72f"

      def install
        bin.install "zap-darwin-arm64" => "zap"
      end
    else
      url "https://github.com/voidash/zapper.cloud/releases/download/v0.8.3/zap-darwin-x86_64"
      sha256 "2587b19577ada90d29f4d16a55027146ffaab6216a652f616383e0c877ac68b7"

      def install
        bin.install "zap-darwin-x86_64" => "zap"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/voidash/zapper.cloud/releases/download/v0.8.3/zap-linux-arm64"
      sha256 "74fae35959f4ff81306968bd9929f90866679ad36b1cb08a792d88b59763ae3d"

      def install
        bin.install "zap-linux-arm64" => "zap"
      end
    else
      url "https://github.com/voidash/zapper.cloud/releases/download/v0.8.3/zap-linux-x86_64"
      sha256 "3ab5d392a0c581a7f6cc7d8861ae5488abb1edbad26c0e3c8da3c48909e65130"

      def install
        bin.install "zap-linux-x86_64" => "zap"
      end
    end
  end

  test do
    system "#{bin}/zap", "--help"
  end
end
