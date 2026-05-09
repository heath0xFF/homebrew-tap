class Hchat < Formula
  desc "Lightweight desktop chat client for local LLMs"
  homepage "https://github.com/heath0xFF/hChat"
  version "0.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/heath0xFF/hChat/releases/download/v#{version}/hchat-macos-arm64.tar.gz"
      sha256 "092a88385290322f491db8248d3b068e0889734053019a647908de8bdd76ce17"
    else
      url "https://github.com/heath0xFF/hChat/releases/download/v#{version}/hchat-macos-x86_64.tar.gz"
      sha256 "800d24427435ee41584bdb928124ebccd2e2a74c31d6a4f5699959198f4a4a64"
    end
  end

  def install
    bin.install "hchat"
  end
end
