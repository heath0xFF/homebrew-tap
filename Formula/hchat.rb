class Hchat < Formula
  desc "Lightweight desktop chat client for local LLMs"
  homepage "https://github.com/heath0xFF/hChat"
  version "0.3.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/heath0xFF/hChat/releases/download/v#{version}/hchat-macos-arm64.tar.gz"
      sha256 "2e9e6316486ae01743766e370fd5a3edc4ff258e0a7fa3f8822c7e120702013d"
    else
      url "https://github.com/heath0xFF/hChat/releases/download/v#{version}/hchat-macos-x86_64.tar.gz"
      sha256 "4cf443d2cf2ae1821b76df5e826a2cf390fb963450a6e19bdac8e5755fad176d"
    end
  end

  def install
    bin.install "hchat"
  end
end
