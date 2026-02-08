class Zap < Formula
  desc "Fast, encrypted peer-to-peer file transfers"
  homepage "https://zapper.cloud"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/voidash/zapper.cloud/releases/download/v0.4.0/zap-darwin-arm64"
      sha256 "0799af6a8fadbb1e6c2bc706a661af8f48dd3b123162235b938e228cc271571b"

      def install
        bin.install "zap-darwin-arm64" => "zap"
      end
    else
      url "https://github.com/voidash/zapper.cloud/releases/download/v0.4.0/zap-darwin-x86_64"
      sha256 "579a9d9136cf3bc6157f50dbc8afacf73e5c5a4dec35ba40f886344b9c211d03"

      def install
        bin.install "zap-darwin-x86_64" => "zap"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/voidash/zapper.cloud/releases/download/v0.4.0/zap-linux-arm64"
      sha256 "059ef1c4c956f14634305dddb6f6d882f23ab71f94b2b1833811741e0ff0307e"

      def install
        bin.install "zap-linux-arm64" => "zap"
      end
    else
      url "https://github.com/voidash/zapper.cloud/releases/download/v0.4.0/zap-linux-x86_64"
      sha256 "fdd9fae5859ee844f4414f05500eb13ed42f2bdf3edba010a7b35fe317b938aa"

      def install
        bin.install "zap-linux-x86_64" => "zap"
      end
    end
  end

  test do
    system "#{bin}/zap", "--help"
  end
end
