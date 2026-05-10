class Hchat < Formula
  desc "Lightweight desktop chat client for local LLMs"
  homepage "https://github.com/heath0xFF/hChat"
  version "0.9.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/heath0xFF/hChat/releases/download/v#{version}/hchat-macos-arm64.tar.gz"
      sha256 "3c02dfd339601357aa11bba4c07368e2320861effaa3b321154197bbf1a3c25c"
    else
      url "https://github.com/heath0xFF/hChat/releases/download/v#{version}/hchat-macos-x86_64.tar.gz"
      sha256 "7e065e1143ab8d523fdadf21b2400a059a739abcecc86dea52e22ec947ef3ea6"
    end
  end

  def install
    bin.install "hchat"
  end
end
