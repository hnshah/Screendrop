# Bot research brief — Screendrop market (copy/paste)

Give this **verbatim** to research bots / agents. Goal: acute, frequent pain → feature bets we can ship on Screendrop.

---

## Mission
Map the **2025–2026 Mac screenshot + screen-recording + async video** market. Find the **largest, most acute, highest-frequency pains** for people who already use Loom, CleanShot X, Shottr, Screen Studio, Snagit, Kap, monologue tools, or macOS built-ins. Output must drive **product bets for Screendrop** (native Mac, local-first, CC0, optional self-host Cloudflare share) — not a generic market essay.

## Non-goals
- Crypto / web3 angles
- Windows-first tools unless they set user expectations on Mac
- SEO content farms without primary quotes
- Inventing survey stats

## Methods (run all that you can)
1. **Web + review mining (last 12–18 months):** G2, Capterra, Reddit (`r/macapps`, `r/MacOS`, `r/selfhosted`, `r/SaaS`, `r/webdev`, `r/ProductManagement`), HN threads, Twitter/X complaints about Loom/CleanShot pricing/limits.
2. **Competitor teardown:** Loom, CleanShot X, Shottr, Screen Studio, Tella, Kap, Snagit, ScreenSnap/similar, Apple Screenshot+QuickTime. For each: price, free limits, Mac-native?, cloud lock-in, screenshot vs video strength, annotation, scroll capture, auto-zoom, captions, privacy.
3. **Job stories:** Write 10 “When I … I want … so I can …” jobs. Score each 1–5 on frequency, intensity, willingness-to-pay, fit to Screendrop (local-first + self-host).
4. **Switching triggers:** Why people leave Loom; why people pay CleanShot; why people stay on free Shottr.
5. **Feature gaps Screendrop can own:** especially (a) free polished async video without 5‑min trap, (b) annotate→clipboard speed, (c) scroll capture, (d) redaction, (e) self-host share without SaaS account.
6. **Quotes:** Prefer primary user language. Cite URLs.

## Required output format
### A. Executive wedge (≤12 lines)
One paragraph: who we win for, against whom, on what job.

### B. Pain leaderboard (table)
| pain | who | frequency | intensity | current workaround | competitor failing | Screendrop opportunity | evidence URLs |

Top 15 rows minimum.

### C. Competitor matrix
Columns: price model, still capture, scroll, annotate depth, record+mic+system audio, camera bubble, auto-zoom, captions/transcript, share model, privacy default, Mac quality.

### D. Top 5 product bets for next 90 days
For each bet: user job, why now, MVP definition, success metric, kill criterion, related upstream issues if any.

### E. Anti-bets
5 things that look sexy but are traps.

### F. Dogfood script ideas
10 concrete QA scenarios (steps) that recreate the top pains on a Mac.

### G. Sources
Bullet list of URLs used.

## Constraints
- Prefer **observed complaints** over vendor marketing.
- Flag uncertainty; do not fake stats.
- If two sources conflict, show both.
- End with: **“If we only ship 3 things, ship these: …”**

## Screendrop facts bots must respect
- Native Swift macOS menu-bar app; local-first History + `.screendrop` sidecars.
- Optional Cloudflare Worker self-host share (no central Screendrop account).
- App Intents: fullscreen/window/area screenshot; start/stop recording.
- Open upstream issues include mic audio (#3), scroll capture (#12), Ctrl+C preview (#15/#16), clipboard vs link (#10).
- License CC0; compete on craft + workflow, not lock-in.

## Done when
A single markdown report `market-screendrop-YYYYMMDD.md` with sections A–G, actionable enough that an engineer can open tickets without another meeting.

---

## One-liner you can paste into Telegram/Slack for bots
> Run the Screendrop market brief in `docs/BOT-RESEARCH-BRIEF.md` end-to-end. Aggressive primary-source mining. Deliver `market-screendrop-<date>.md` with pain leaderboard, competitor matrix, top 5 bets, anti-bets, and 10 dogfood QA scripts. No fluff.
