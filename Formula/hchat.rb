class Hchat < Formula
  desc "Lightweight desktop chat client for local LLMs"
  homepage "https://github.com/heath0xFF/hChat"
  version "0.9.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/heath0xFF/hChat/releases/download/v#{version}/hchat-macos-arm64.tar.gz"
      sha256 "63252604c60b25bdd41d551e1099c708186edfa6a442af82d460edecea2751a4"
    else
      url "https://github.com/heath0xFF/hChat/releases/download/v#{version}/hchat-macos-x86_64.tar.gz"
      sha256 "eeeca154ed060b762ca08526bda0511e1659daa0ade7d0b83d8dfc1be8690088"
    end
  end

  def install
    bin.install "hchat"
  end
end
