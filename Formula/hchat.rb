class Hchat < Formula
  desc "Lightweight desktop chat client for local LLMs"
  homepage "https://github.com/heath0xFF/hChat"
  version "0.9.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/heath0xFF/hChat/releases/download/v#{version}/hchat-macos-arm64.tar.gz"
      sha256 "7373338f4abd0dcdd79628073889317eb87ae99b14a3b4346744c82871493161"
    else
      url "https://github.com/heath0xFF/hChat/releases/download/v#{version}/hchat-macos-x86_64.tar.gz"
      sha256 "18a4d5f8f38f135df1adb227911667bf60c15f5c5f794972b0c61b4d1e13ae3a"
    end
  end

  def install
    bin.install "hchat"
  end
end
