cask "claude-connection-watcher" do
  version "0.2.2"
  sha256 "3dd8d8dc28c2cbf84dc900b77796c77e0725d28def5a8e6cf22f55444efafec9"

  url "https://github.com/LeiZiKang/claude-connection-watcher/releases/download/v#{version}/Claude-Connection-Watcher-v#{version}-macOS-universal.zip"
  name "Claude Connection Watcher"
  desc "Observe Claude-related processes and quit their apps"
  homepage "https://github.com/LeiZiKang/claude-connection-watcher"

  depends_on macos: :ventura

  app "Claude Connection Watcher.app"

  uninstall quit: "com.leizikang.claude-connection-watcher"

  zap trash: "~/Library/Preferences/com.leizikang.claude-connection-watcher.plist"
end
