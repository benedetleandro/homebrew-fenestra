# homebrew-fenestra

Homebrew tap for [Fenestra](https://github.com/benedetleandro/fenestra) — a tiny
local server that opens `dist/index.html` builds in your browser.

```bash
brew install benedetleandro/fenestra/fenestra
```

Or, to tap first:

```bash
brew tap benedetleandro/fenestra
brew install fenestra
```

## What you get

The `fenestra` CLI (~6 MB, static, no runtime):

```bash
fenestra ~/projetos/app/dist/index.html
fenestra --browsers
fenestra --browser firefox
```

## What you do not get

The macOS Finder app. `Fenestra.app` is an unsigned bundle, so Gatekeeper blocks
it unless it is built locally. Use the [macos/ kit](https://github.com/benedetleandro/fenestra/tree/main/macos)
for that.

## License

MIT. The formula only installs the prebuilt binary published in the Fenestra
release; the source is public and the SHA-256 is pinned.
