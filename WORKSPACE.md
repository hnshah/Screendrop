# Screendrop workspace lock (S0 receipt)

Verified: 2026-08-22 (host NoatssMacStudio)

| Field | Value |
|---|---|
| Local path | `/Users/noats/github/Screendrop` |
| Fork (push target) | https://github.com/hnshah/Screendrop (`isFork: true`) |
| Upstream (contribute-to) | https://github.com/fayazara/Screendrop (parent of fork) |
| gh auth | **hnshah** (keyring); scopes: `gist`, `read:org`, `repo`, `workflow` |
| Contribute / push path | Branch on **hnshah** fork → open PR to **fayazara/Screendrop**. **No direct push** to fayazara. |
| License | CC0-1.0 |
| HEAD | `f4883be` (`main` = `origin/main` = `upstream/main`) |
| Kanban | Hermes board task graph under workspace dir |

## Git remotes (verified)

```
origin    https://github.com/hnshah/Screendrop.git   (fetch + push)
upstream  https://github.com/fayazara/Screendrop.git (fetch + push URL present; do not push)
```

- `origin` = hnshah fork (only remote used for `git push`)
- `upstream` = fayazara canonical repo (fetch/rebase source only)
- Direct push to `upstream` / `fayazara/Screendrop` is out of policy even if the remote URL allows it

## Host + toolchain (verified)

| Item | Observed |
|---|---|
| macOS | 26.5.1 (Build 25F80) |
| Xcode.app | Present at `/Applications/Xcode.app` |
| Xcode version | 26.6 (Build 17F113) via `DEVELOPER_DIR=... xcodebuild -version` |
| Default `xcode-select -p` | `/Library/Developer/CommandLineTools` (CLT — **not** full Xcode) |
| Required override | `DEVELOPER_DIR=/Applications/Xcode.app/Contents/Developer` |

Always prefix builds with `DEVELOPER_DIR` so xcodebuild uses Xcode.app, not CLT:

```bash
DEVELOPER_DIR=/Applications/Xcode.app/Contents/Developer xcodebuild build \
  -project Screendrop.xcodeproj \
  -scheme Screendrop \
  -configuration Debug \
  -destination "platform=macOS"
```

Project deployment target / AGENTS.md: macOS 26.4+, Xcode 26.4+ toolchain. Host satisfies this (26.5.1 + Xcode 26.6).

## AGENTS.md

- Present at repo root; authoritative for build, concurrency, architecture, conventions.
- Single Xcode target, no SPM, no test target — build success is the gate.
- Bundle ID: `com.fayazahmed.Screendrop`
- App sandbox off; screen recording entitlement/usage description required.

## Policy summary for agents

1. Work only in this clone path.
2. Push branches to `origin` (hnshah). Never push mainline fixes straight to fayazara.
3. Open PRs against `fayazara/Screendrop`.
4. Build with `DEVELOPER_DIR=/Applications/Xcode.app/Contents/Developer`.
5. Follow AGENTS.md; do not add SPM deps or sandbox entitlements.
6. Local Debug gate: see `BUILD-GATE.md`. Literal AGENTS.md xcodebuild fails without team `TB2S44TFQS` Mac Development cert; use `CODE_SIGNING_ALLOWED=NO CODE_SIGNING_REQUIRED=NO CODE_SIGN_IDENTITY=- DEVELOPMENT_TEAM=` for compile-only success on this host.

## Build status (2026-08-23)
- **Debug BUILD SUCCEEDED** with ad-hoc signing (`CODE_SIGN_IDENTITY=-`).
- Upstream project expects team `TB2S44TFQS` (not on this Mac).
- App: `.derivedData/Build/Products/Debug/Screendrop.app`
- Helper: `./scripts/build-debug.sh`

## Docs
- `docs/PRODUCT-WEDGE.md` — pain-ranked co-opt thesis
- `docs/BOT-RESEARCH-BRIEF.md` — paste to research bots
- `docs/TESTING.md` — L0–L5 + MCP direction
