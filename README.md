# LeiZiKang's Homebrew Tap

Homebrew Casks for macOS apps maintained by LeiZiKang.

## Guard (current beta)

```bash
brew install --cask leizikang/tap/fuck-anthropic-guard
```

Existing installations:

```bash
brew update
brew upgrade --cask leizikang/tap/fuck-anthropic-guard
```

The current cask is **0.4.4-beta.1 / build 13.0**, a Developer ID-signed,
Apple-notarized Universal 2 app for macOS 14 or later. Homebrew checks the exact
SHA-256 of the published ZIP. [Release and download](https://github.com/LeiZiKang/fuck-anthropic-guard/releases/tag/v0.4.4-beta.1).

Before upgrading, save your Claude work, keep Surge running, back up the existing
app and choose **Keep blocking and quit** in Guard. Reopen it after the upgrade, resume checks and approve the replacement
extension in macOS if prompted. Confirm that protection is ready. Recognized
Claude connections may be blocked while verification resumes.

Installing the cask does not enable the filter or configure Surge. Guard checks
and restricts recognized Claude clients using a separately configured Surge;
it is not a VPN and does not guarantee account safety or coverage of all traffic.
[Source and coverage limits](https://github.com/LeiZiKang/fuck-anthropic-guard).

Before uninstalling, disable protection inside Guard, verify that it is disabled,
and quit. Removing the app alone does not reliably remove its system extension.
The cask preserves preferences and does not change proxy, DNS or routing settings.
The legacy Watcher uses the same bundle identifiers: do not run both together.

## Claude Connection Watcher (legacy)

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
