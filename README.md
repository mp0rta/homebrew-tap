# homebrew-tap

Homebrew formulae for [mp0rta](https://github.com/mp0rta) projects.

## Formulae

| Formula | Description |
|---|---|
| [`mqvpn`](https://github.com/mp0rta/mqvpn) | Multipath VPN using MASQUE CONNECT-IP (RFC 9484) and Multipath QUIC |

## Install

```sh
brew install mp0rta/tap/mqvpn
```

`mqvpn` requires macOS on Apple silicon. The formula installs the official
release binary, which is self-contained (no runtime dependencies).

```sh
sudo mqvpn --mode client --server HOST:443 --auth-key KEY
```

See each project's README for full documentation.
