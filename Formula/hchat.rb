class Hchat < Formula
  desc "Lightweight desktop chat client for local LLMs"
  homepage "https://github.com/heath0xFF/hChat"
  version "0.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/heath0xFF/hChat/releases/download/v#{version}/hchat-macos-arm64.tar.gz"
      sha256 "570a32edcd106aab6e5306ce2d35c89264786b64bd0b99e5cb3afcb030b9daa3"
    else
      url "https://github.com/heath0xFF/hChat/releases/download/v#{version}/hchat-macos-x86_64.tar.gz"
      sha256 "9620f8263ec6d1dfffd788226f064bf697a95139df1ad3d36098332eef19e887"
    end
  end

  def install
    bin.install "hchat"
  end
end
