class Hchat < Formula
  desc "Lightweight desktop chat client for local LLMs"
  homepage "https://github.com/heath0xFF/hChat"
  version "0.9.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/heath0xFF/hChat/releases/download/v#{version}/hchat-macos-arm64.tar.gz"
      sha256 "2a5d857c3ac930ab08a2a3205ebe02f9eb2a4ac2b67d354f69ab8e5580b4c871"
    else
      url "https://github.com/heath0xFF/hChat/releases/download/v#{version}/hchat-macos-x86_64.tar.gz"
      sha256 "549bc198008cfc20c824f3e07c73594928f26276e6e756cb769c47a77f5aa761"
    end
  end

  def install
    bin.install "hchat"
  end
end
