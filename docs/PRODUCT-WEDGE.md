# Screendrop product wedge (co-opt plan)

Date: 2026-08-23  
Repo: hnshah fork of fayazara/Screendrop  
Stance: **local-first Loom + CleanShot hybrid**, free/CC0, self-host cloud.

## Jobs people actually pay pain for (ranked)

Frequency × intensity for Mac builders / PMs / founders / support:

| Rank | Job | Acute pain today | Screendrop wedge |
|---:|---|---|---|
| 1 | **Async bug report / PR walkthrough** | Loom free cap + sub; privacy; slow “record → link” | One hotkey → mic+screen → auto captions → self-host link in &lt;60s |
| 2 | **Annotate & paste into Slack/Linear** | Desktop pile-up; Markup slow; cloud pushy | Capture → numbered steps/blur → clipboard **default**, no Desktop junk |
| 3 | **Scrolling long UI / docs capture** | CleanShot paid; Shottr free but no video | Horizontal+vertical scroll capture as first-class (#12 open) |
| 4 | **Polished product demo without Screen Studio price** | Screen Studio $ / sub; auto-zoom is the moat | Studio auto-zoom + cursor rebuild already in product — **make presets dead-simple** |
| 5 | **Sensitive redaction before share** | Easy to leak tokens in support videos | Smart redaction on stills + path to video redaction (upstream branch exists) |
| 6 | **Onboarding / SOP with step numbers** | Snagit heavy; multi-tool hop | Numbered circles + history re-edit sidecars |
| 7 | **Team share without SaaS** | Loom tracking tax | Cloudflare Worker self-host (already designed) — **zero Screendrop account** |

## What NOT to chase first
- Cross-platform parity
- AI “auto editor” arms race vs Tella
- Social publishing network effects
- Pixel-perfect design-tool replacement

## Co-opt thesis
Become **best at the Mac builder loop**:

```
see bug → capture/record → annotate or auto-zoom → private share link OR paste → done
```

Instrument that loop with dogfood scripts + MCP so every release is measured on:
- time-to-clipboard (still)
- time-to-share-link (video)
- steps with zero Desktop pollution
- redaction before share rate

## Upstream open issues that map to wedge
- #3 / PR #4 — mic in recordings (async video core)
- #12 — scroll capture (still-image core)
- #15 / #16 — Ctrl+C dismiss/close preview (speed of loop)
- #10 — copy image **and** upload without forcing link on clipboard

## Dogfood personas (use in QA)
1. **Indie founder** — 30s product update for Discord
2. **Support engineer** — redact API key in screenshot, number steps 1–4, paste Slack
3. **OSS maintainer** — 90s PR walkthrough with mic, self-host link
4. **Designer-dev** — scrolling settings page + blur secrets
