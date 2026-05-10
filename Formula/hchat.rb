class Hchat < Formula
  desc "Lightweight desktop chat client for local LLMs"
  homepage "https://github.com/heath0xFF/hChat"
  version "0.8.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/heath0xFF/hChat/releases/download/v#{version}/hchat-macos-arm64.tar.gz"
      sha256 "f8295792b9f6cac8e0894872b310e83e556142e2879b8bb03ae1b503ba29a441"
    else
      url "https://github.com/heath0xFF/hChat/releases/download/v#{version}/hchat-macos-x86_64.tar.gz"
      sha256 "8f6d5c66552d226a99c1e9748816ae1d7638f495fd7443fc24868f2197f1321f"
    end
  end

  def install
    bin.install "hchat"
  end
end
