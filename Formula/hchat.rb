class Hchat < Formula
  desc "Lightweight desktop chat client for local LLMs"
  homepage "https://github.com/heath0xFF/hChat"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/heath0xFF/hChat/releases/download/v#{version}/hchat-macos-arm64.tar.gz"
      sha256 "576338cd3ae8924f79d16f2b0615828c1d9e93827b81c87fe39c67f1ea23da07"
    else
      url "https://github.com/heath0xFF/hChat/releases/download/v#{version}/hchat-macos-x86_64.tar.gz"
      sha256 "b65c2ed17c23488ba4bd6d34230719d56c59821e0a266914faa23e6e1f213154"
    end
  end

  def install
    bin.install "hchat"
  end
end
