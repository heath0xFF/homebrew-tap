class Hchat < Formula
  desc "Lightweight desktop chat client for local LLMs"
  homepage "https://github.com/heath0xFF/hChat"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/heath0xFF/hChat/releases/download/v#{version}/hchat-macos-arm64.tar.gz"
      sha256 "407e41ba17fd390996789978eed4db5c5d90ee8625263254dc15e2ef3e7e76b2"
    else
      url "https://github.com/heath0xFF/hChat/releases/download/v#{version}/hchat-macos-x86_64.tar.gz"
      sha256 "094b2bea9c1528a7b1335f611c4afd2bb16cc62c09af015b2565c0970fbde285"
    end
  end

  def install
    bin.install "hchat"
  end
end
