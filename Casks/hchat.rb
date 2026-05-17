cask "hchat" do
  arch arm: "arm64", intel: "x86_64"

  version "0.9.3"
  sha256 arm:   "2a07cd3cbe014edff5f76558a0a03e2d74c6a5ca884c7f27fcd5b185d1f52366",
         intel: "ed6d6a2f05ac6e01ba1e9f2505b697d8ba0080a0ebd2c3b131fbe628eb13380c"

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
