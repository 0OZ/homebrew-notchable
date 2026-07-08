# Homebrew tap for Notchable

Install:

```bash
brew tap 0OZ/notchable
brew install --cask notchable
```

This tap is updated automatically on each release (tag push). The cask downloads the
notarized zip from [notchable.io/download](https://notchable.io/download/) and uses the
Sparkle appcast for `brew livecheck`.

## Maintainer

`frontend/swift/scripts/update-homebrew-cask.sh` rewrites `Casks/notchable.rb` from a
release zip. CI runs it after each direct-download release and pushes here via
`publish-homebrew-tap.sh`.

To publish manually:

```bash
cd frontend/swift
./scripts/update-homebrew-cask.sh dist/releases/Notchable-0.1.0.zip
./scripts/publish-homebrew-tap.sh
```

## Official Homebrew cask

To get `brew install --cask notchable` **without** a tap, submit a PR to
[homebrew/homebrew-cask](https://github.com/Homebrew/homebrew-cask) using the formula in
`Casks/notchable.rb` as a starting point. See `docs/HOMEBREW.md`.
