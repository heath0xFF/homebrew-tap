class Hchat < Formula
  desc "Lightweight desktop chat client for local LLMs"
  homepage "https://github.com/heath0xFF/hChat"
  version "0.3.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/heath0xFF/hChat/releases/download/v#{version}/hchat-macos-arm64.tar.gz"
      sha256 "569a7aca4156779ca0325939ff11f1d7e694e399b192f1a951973fb925b9afaa"
    else
      url "https://github.com/heath0xFF/hChat/releases/download/v#{version}/hchat-macos-x86_64.tar.gz"
      sha256 "0adbd9b1159f34f9a04788d7f337f847fd2ac5b662586188b2d6b80a6c0947f7"
    end
  end

  def install
    bin.install "hchat"
  end
end
