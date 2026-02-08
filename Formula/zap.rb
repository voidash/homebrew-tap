class Zap < Formula
  desc "Fast, encrypted peer-to-peer file transfers"
  homepage "https://zapper.cloud"
  version "0.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/voidash/zapper.cloud/releases/download/v0.6.0/zap-darwin-arm64"
      sha256 "1165ad1c0b27f0bb1888140f3b2bba963fb30df820eb237e2420e0984131677f"

      def install
        bin.install "zap-darwin-arm64" => "zap"
      end
    else
      url "https://github.com/voidash/zapper.cloud/releases/download/v0.6.0/zap-darwin-x86_64"
      sha256 "6d565b4cbd704afe1915db26bbfc6046978e009d9b5c1ad8353c31385e195c6e"

      def install
        bin.install "zap-darwin-x86_64" => "zap"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/voidash/zapper.cloud/releases/download/v0.6.0/zap-linux-arm64"
      sha256 "642411ef0e9303a8ae1ddaee2a0179a0c0ebc1323c2a7c790308e16af62ae8b7"

      def install
        bin.install "zap-linux-arm64" => "zap"
      end
    else
      url "https://github.com/voidash/zapper.cloud/releases/download/v0.6.0/zap-linux-x86_64"
      sha256 "37557060106ab77486f06167148122ae91ef230e95d565e97c5bef9bfbb88a7e"

      def install
        bin.install "zap-linux-x86_64" => "zap"
      end
    end
  end

  test do
    system "#{bin}/zap", "--help"
  end
end
