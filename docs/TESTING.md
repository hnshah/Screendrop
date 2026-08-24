# Screendrop testing strategy

No XCTest target upstream. We still test the shit out of it.

## Layers

| Layer | What | How |
|---|---|---|
| L0 Build gate | Compiles on macOS 26 + Xcode 26 | `scripts/build-debug.sh` (ad-hoc sign) |
| L1 Intent smoke | App Intents fire | Shortcuts / `shortcuts` CLI / future MCP |
| L2 History FS | Captures land in App Support History | Watch `~/Library/Application Support/.../History` |
| L3 UI dogfood | Overlay, annotate, studio | peekaboo / computer-use + human |
| L4 Persona loops | Wedge jobs from PRODUCT-WEDGE.md | Scripted scenarios + timing |
| L5 (later) XCTest | Pure logic (coords, redaction, path utils) | Optional target — don’t block on it |

## Permissions (manual once)
Screen Recording, Microphone, Camera, Input Monitoring. Fail closed in harness if missing.

## Local Debug build
Upstream team signing is Fayaz’s team ID — local builds use ad-hoc:

```bash
./scripts/build-debug.sh
```

## MCP direction (T3)
Thin MCP tools wrapping:
1. `app.launch` / `app.quit`
2. `capture.fullscreen` (via App Intent)
3. `recording.start|stop`
4. `history.list` (filesystem)
5. `history.latest_path`
6. `export.assert_exists`

Prefer intents + filesystem over brittle Accessibility for core flows.
