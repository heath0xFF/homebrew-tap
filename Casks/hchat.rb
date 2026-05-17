cask "hchat" do
  arch arm: "arm64", intel: "x86_64"

  version "0.9.2"
  sha256 arm:   "082b38ee1eafb09a9e138ef67b7fb3090defebaf5c04cfc1ea1a4c2bc6bbdd04",
         intel: "e47f6d75914e86c922c925eb466361faaa7d6fbb08978b7d49362162019bb5fb"

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
