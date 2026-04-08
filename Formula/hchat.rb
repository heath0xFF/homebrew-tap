class Hchat < Formula
  desc "Lightweight desktop chat client for local LLMs"
  homepage "https://github.com/heath0xFF/hChat"
  version "0.3.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/heath0xFF/hChat/releases/download/v#{version}/hchat-macos-arm64.tar.gz"
      sha256 "0b0dafe01440a157ff9eaa57c7b50437b25d7c0e0e2a70f58f42e92cf802c4f7"
    else
      url "https://github.com/heath0xFF/hChat/releases/download/v#{version}/hchat-macos-x86_64.tar.gz"
      sha256 "334f5407468a39fa0af5cb12445ff855f9b0fd4cd22ea0d23574ebcde41d60ad"
    end
  end

  def install
    bin.install "hchat"
  end
end
