cask "fuck-anthropic-guard" do
  version "0.4.4"
  sha256 "2e2e00db1c591100a22bb3a716cd070cc493b110bd89b6900207abb869c9049d"

  url "https://github.com/LeiZiKang/fuck-anthropic-guard/releases/download/v#{version}/fuck-anthropic-guard-#{version}.zip"
  name "fuck-anthropic guard"
  desc "Manage recognized Claude processes and check their Surge connection path"
  homepage "https://github.com/LeiZiKang/fuck-anthropic-guard"

  conflicts_with cask: "claude-connection-watcher"
  depends_on macos: :sonoma

  app "fuck-anthropic guard.app"

  caveats <<~EOS
    Installation does not activate or verify the system filter.
    Configure Surge separately and approve filtering explicitly in macOS.

    Before upgrading, save your Claude work, keep Surge running, back up Guard
    and choose "Keep blocking and quit". Claude connections may be interrupted.
    After upgrading, reopen Guard and resume checks; approve the replacement
    extension in macOS if prompted. Confirm protection is ready before use.

    Before uninstalling, disable protection in the app, confirm it is disabled,
    and quit. Removing the app alone does not reliably remove an active system
    extension. This cask does not change proxy, DNS, routing, or system-filter
    settings, or delete retained preferences.

    The old Claude Connection Watcher shares this app's bundle identifiers.
    Disable its protection and quit it before migration. Remove the old cask
    separately; do not keep a manually installed old copy running alongside it.
  EOS
end
