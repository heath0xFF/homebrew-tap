class Hchat < Formula
  desc "Lightweight desktop chat client for local LLMs"
  homepage "https://github.com/heath0xFF/hChat"
  version "0.9.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/heath0xFF/hChat/releases/download/v#{version}/hchat-macos-arm64.tar.gz"
      sha256 "c69d78bcc89a7513a3c9bd882f21ffd650396e523a5e0ee0b05bc9efe63cdc63"
    else
      url "https://github.com/heath0xFF/hChat/releases/download/v#{version}/hchat-macos-x86_64.tar.gz"
      sha256 "28b02857eaca338c69560c49b7520b5f4b472fa009a4d2a2eedde25b866f55e4"
    end
  end

  def install
    bin.install "hchat"
  end
end
