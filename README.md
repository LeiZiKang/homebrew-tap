# LeiZiKang's Homebrew Tap

Homebrew Casks for macOS apps maintained by LeiZiKang.

## Claude Connection Watcher

```bash
brew install --cask leizikang/tap/claude-connection-watcher
```

Alternatively:

```bash
brew tap leizikang/tap
brew install --cask claude-connection-watcher
```

The cask downloads the Developer ID-signed, Apple-notarized Universal 2 app from the project's GitHub Release and verifies its SHA-256. Requires macOS 13 or later; supports Apple silicon and Intel Macs.

- [Source code and documentation](https://github.com/LeiZiKang/claude-connection-watcher)
- [Download releases](https://github.com/LeiZiKang/claude-connection-watcher/releases/latest)

After installation, open **Claude Connection Watcher** from Applications. Click its menu bar icon to see related apps. Use **中文 / English** to choose a language and **Refresh / 刷新** for a fresh sample.

The app identifies signed Claude clients and connections visible through an existing supported Clash/Mihomo controller. It does not modify your proxy, DNS, or routing settings. See the application README for coverage limitations.

## Updates and removal

```bash
brew update
brew upgrade --cask claude-connection-watcher
brew uninstall --cask claude-connection-watcher
```

Uninstalling preserves the app's language preference. Add `--zap` only if you also want to remove that preference. If migrating a manually installed copy, quit Watcher and move that copy out of Applications before installing; keep a backup until installation succeeds.

This is a maintainer-owned third-party tap, not the official Homebrew Cask repository. Claude Connection Watcher is independent and is not affiliated with Anthropic.

## Maintainer checklist

Publish the application's signed release ZIP first, then update the cask version and exact SHA-256. Run `brew style`, `brew info --cask`, and `brew fetch --cask` for the cask before pushing. Never commit signing keys, authentication tokens, or notarization credentials.

MIT licensed. See LICENSE.
