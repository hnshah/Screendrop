# 90-day product bets (Screendrop)

Date: 08-22-2026  
Parent: `docs/market-screendrop-20260822.md`  
Wedge: `docs/PRODUCT-WEDGE.md`

Scores and quotes are in the parent report. This file is the ticket-ready cut.

---

## Top 5 bets

### 1. Microphone that actually records

- **User job:** When I walk a PR or bug, I want my voice on the file so a reviewer does not need a call.
- **Why now:** Without mic, "Loom alternative" is false. Loom Starter still hard-stops at 5:00 and 25 clips ([Atlassian](https://support.atlassian.com/loom/docs/how-long-can-i-record/)). #3 is open; PR #4 exists.
- **MVP:** Selected mic writes AAC. Permission string present. Mute state visible. History playback has narration. System audio is a separate toggle.
- **Success metric:** 10/10 narrated dogfood clips (scripts D1, D3, D6, D9) contain intelligible audio when the meter moved.
- **Kill criterion:** If ScreenCaptureKit mic cannot be made reliable on macOS 26.4 in 30 days, document a QuickTime fallback. Do not ship a silent "mic on" toggle.
- **Upstream:** https://github.com/fayazara/Screendrop/issues/3 https://github.com/fayazara/Screendrop/pull/4

### 2. Clipboard-first annotate loop

- **User job:** When I grab a UI, I want numbers + blur on the clipboard so I can paste Slack/Linear in one gesture.
- **Why now:** Highest-frequency stills job. Users already filed the spec (#15, #16, #10). This is why people pay CleanShot $29.
- **MVP:** Ctrl/Cmd+C on preview copies PNG and dismisses. Same in the editor. Upload must not replace clipboard image with a URL. Default after-capture is clipboard, not Desktop.
- **Success metric:** Scripts D2 / D4 / D8: capture to paste in under 10 seconds, zero Desktop PNGs.
- **Kill criterion:** If overlay keys fight IME, ship a "Copy & close" button first.
- **Upstream:** https://github.com/fayazara/Screendrop/issues/15 https://github.com/fayazara/Screendrop/issues/16 https://github.com/fayazara/Screendrop/issues/10

### 3. First-class scroll capture

- **User job:** When a settings page or Slack thread is taller than the display, I want one still.
- **Why now:** Apple still cannot do it ([Support](https://support.apple.com/en-us/102646), [Community 07-13-2026](https://techcommunity.microsoft.com/discussions/windows11/how-to-take-a-scrolling-screenshot-on-mac-for-long-pages/4536361)). Shottr and CleanShot own this. #12 is open.
- **MVP:** Vertical window scroll. Horizontal next. One History still. Fail closed instead of a torn stitch.
- **Success metric:** Scripts D5 / D7 produce one usable PNG each.
- **Kill criterion:** If OS scroll APIs are unusable, ship manual stitch assist rather than a broken auto-scroll.
- **Upstream:** https://github.com/fayazara/Screendrop/issues/12

### 4. Redaction gate before share

- **User job:** When the frame has an API key, I want blur before any link or paste leaves the Mac.
- **Why now:** Intensity 5. Snagit sells Smart Redact at $39/yr. Screendrop already detects secrets on stills.
- **MVP:** Before Worker upload or copy-link, run smart redaction. Apply, typed skip, or cancel. Sidecar keeps the original.
- **Success metric:** Script D4: fake `sk-` key is blurred on the shared PNG.
- **Kill criterion:** If false positives block more than about 1 in 5 clean uploads, downgrade to suggest-not-block.
- **Upstream:** Existing annotation smart redaction. Video redaction is out of this MVP.

### 5. Self-host share finished in one sitting

- **User job:** When I share with a customer or a public repo, I want a link on my Cloudflare, with no Screendrop account for anyone.
- **Why now:** HN/X demand for S3/R2 and privacy. Loom seats and CleanShot Cloud expiry are the push. The Worker already exists.
- **MVP:** Settings Cloud: token, deploy, paste URL, verify, with errors that name the missing binding. Upload from overlay honors clipboard vs link (bet 2). Viewer needs no account.
- **Success metric:** Scripts D3 / D10: cold deploy + first playing link in one session.
- **Kill criterion:** If the deploy button stays brittle, ship a `wrangler` runbook. Do not build a hosted Screendrop SaaS.
- **Upstream:** https://github.com/fayazara/screendrop-worker

---

## Anti-bets (do not spend the next 90 days here)

1. **Windows / Linux parity.** CleanShot stayed Mac-only. Snagit's cross-platform tax is a port UI.
2. **AI auto-editor arms race versus Tella.** On-device captions are enough. Do not rent GPUs.
3. **Social publishing and viewer-analytics as the default.** "Who watched" is why sales stays on Loom and why privacy users leave.
4. **Pixel-perfect design tool (ruler, APCA, OKLCH).** That is Shottr's niche. Chat-paste users will not switch for a ruler.
5. **A central Screendrop account or multi-tenant cloud.** Recreates Loom's seat tax. Contradicts CC0 + Worker.

---

## If we only ship 3 things, ship these:

1. **Microphone audio that lands on the file** (bet 1 / #3).
2. **Capture → annotate → clipboard in one shortcut** (bet 2 / #15 #16 #10).
3. **Scroll capture that produces one still** (bet 3 / #12).

Bets 4 and 5 (redaction gate, one-sitting Worker) are next if the first three land.
