cask "hchat" do
  arch arm: "arm64", intel: "x86_64"

  version "0.9.4"
  sha256 arm:   "f08ff94cc198e34e35f8f86a71354f9594e9b6ebf6cfd93ce1e26a2810d785a5",
         intel: "3fc4c27d7477d806098c0b1800663844af101eac0cace255d1a99050c29a5516"

  url "https://github.com/heath0xFF/hChat/releases/download/v#{version}/hChat-#{arch}.app.zip"
  name "hChat"
  desc "Lightweight desktop chat client for local LLMs"
  homepage "https://github.com/heath0xFF/hChat"

  app "hChat.app"

  postflight do
    system_command "/usr/bin/xattr",
         args: ["-dr", "com.apple.quarantine", "#{appdir}/hChat.app"]
  end

  zap trash: [
    "~/.config/hchat",
    "~/Library/Application Support/hchat",
    "~/Library/Application Support/hchat.db",
  ]
end
