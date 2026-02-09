class Zap < Formula
  desc "Fast, encrypted peer-to-peer file transfers"
  homepage "https://zapper.cloud"
  version "0.8.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/voidash/zapper.cloud/releases/download/v0.8.2/zap-darwin-arm64"
      sha256 "23f6eff693683c4522b5b7327ad581c04465ba5811a9737360982137ce6b724f"

      def install
        bin.install "zap-darwin-arm64" => "zap"
      end
    else
      url "https://github.com/voidash/zapper.cloud/releases/download/v0.8.2/zap-darwin-x86_64"
      sha256 "aac63143a443fded60405854b586b00e26cc6dba2eb0560a671373cd3853a317"

      def install
        bin.install "zap-darwin-x86_64" => "zap"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/voidash/zapper.cloud/releases/download/v0.8.2/zap-linux-arm64"
      sha256 "fc9cf61c81fa7616b4fbdd8fe41029344ff97a8c64d99a573c4533ef72a0b7d3"

      def install
        bin.install "zap-linux-arm64" => "zap"
      end
    else
      url "https://github.com/voidash/zapper.cloud/releases/download/v0.8.2/zap-linux-x86_64"
      sha256 "16ba53efb8dedd41a6f7dee938d8e458e4a374d6f161e31b64d0279d09f9e104"

      def install
        bin.install "zap-linux-x86_64" => "zap"
      end
    end
  end

  test do
    system "#{bin}/zap", "--help"
  end
end
