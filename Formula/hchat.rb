class Hchat < Formula
  desc "Lightweight desktop chat client for local LLMs"
  homepage "https://github.com/heath0xFF/hChat"
  version "0.3.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/heath0xFF/hChat/releases/download/v#{version}/hchat-macos-arm64.tar.gz"
      sha256 "393219441c5ee918302e4c1b3f48a651c8743e73a90bce0693837e4a6b4a3f13"
    else
      url "https://github.com/heath0xFF/hChat/releases/download/v#{version}/hchat-macos-x86_64.tar.gz"
      sha256 "eedc9d65141937821e402651c4a4d970e178498d1ddffbf9341834a43216dc51"
    end
  end

  def install
    bin.install "hchat"
  end
end
