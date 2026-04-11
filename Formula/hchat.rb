class Hchat < Formula
  desc "Lightweight desktop chat client for local LLMs"
  homepage "https://github.com/heath0xFF/hChat"
  version "0.4.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/heath0xFF/hChat/releases/download/v#{version}/hchat-macos-arm64.tar.gz"
      sha256 "8b901c531fc658aa98cca796ba67bcc90b843f1c604244ed03581abb8743cd01"
    else
      url "https://github.com/heath0xFF/hChat/releases/download/v#{version}/hchat-macos-x86_64.tar.gz"
      sha256 "034b0e7b43a1f726693b5f20ac898ac2a40438b5cb51ac32b6599585af247dfc"
    end
  end

  def install
    bin.install "hchat"
  end
end
