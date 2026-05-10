class Hchat < Formula
  desc "Lightweight desktop chat client for local LLMs"
  homepage "https://github.com/heath0xFF/hChat"
  version "0.8.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/heath0xFF/hChat/releases/download/v#{version}/hchat-macos-arm64.tar.gz"
      sha256 "c22c3bb058b22a3d7f7a53c0927be21669c22f4be3b0d09e54b103c7067f9601"
    else
      url "https://github.com/heath0xFF/hChat/releases/download/v#{version}/hchat-macos-x86_64.tar.gz"
      sha256 "2b9fe50e24250dbcade472977362520b95ace64accab5df21a451ba8c2d80508"
    end
  end

  def install
    bin.install "hchat"
  end
end
