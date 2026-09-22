cask "fuck-anthropic-guard" do
  version "0.4.0-beta.1"
  sha256 "33660cf1b808a74f231d2cd4783f78f9cc6c051438488f1aa84a2ea737a76beb"

  url "https://github.com/LeiZiKang/fuck-anthropic-guard/releases/download/v#{version}/fuck-anthropic-guard-#{version}.zip"
  name "fuck-anthropic guard"
  desc "Manage recognized Claude processes and check their Surge connection path"
  homepage "https://github.com/LeiZiKang/fuck-anthropic-guard"

  conflicts_with cask: "claude-connection-watcher"
  depends_on macos: :sonoma

  app "fuck-anthropic guard.app"

  caveats <<~EOS
    Experimental beta. Installation does not activate or verify the system filter.
    Configure Surge separately and approve filtering explicitly in macOS.

    Before uninstalling or upgrading, disable protection in the app, confirm it
    is disabled, and quit the app. Removing the app alone does not reliably
    remove an active system extension. This cask does not change proxy, DNS,
    routing, or system-filter settings, or delete retained preferences.

    The old Claude Connection Watcher shares this app's bundle identifiers.
    Disable its protection and quit it before migration. Remove the old cask
    separately; do not keep a manually installed old copy running alongside it.
  EOS
end
