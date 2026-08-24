# Claim hygiene pass - Screendrop market pack (08-22-2026)

**Analyzer:** claim hygiene only. No new research. No invented stats.  
**Inputs:** `docs/market-screendrop-20260822.md`, `pain-leaderboard.md`, `bets-90d.md`, `dogfood-scripts.md` (main after PR #1 merge).  
**Verdict:** **PASS with caveats.** Pack is ticket-ready. Frequency/intensity/WTP/Fit are already labeled as analyst judgments. Below are freeze rules for Report Maker HTML and engineering tickets.

---

## What is Confirmed (primary)

| Claim class | Examples | Status |
|-------------|----------|--------|
| Loom Starter 5:00 stop + 25-item silo | Atlassian support docs cited | **Confirmed** |
| Creator Lite → paid Creator / cannot keep old pricing | Atlassian integration pricing doc | **Confirmed** |
| Download/upload gated off Starter | Atlassian pricing page | **Confirmed** (Business+) |
| Apple Desktop default screenshot path | Apple Support | **Confirmed** |
| Upstream gaps #3 mic, #10 clipboard, #12 scroll, #15/#16 Ctrl+C | fayazara issues | **Confirmed** |
| Kap last release Oct 2022; abandonment thread | GitHub #1265 | **Confirmed** as issue existence |
| Shottr not open source | Official site vs bundl.run | **Confirmed** correction |

---

## What is PR / secondary / needs_check

| Claim | Why | Freeze rule |
|-------|-----|-------------|
| Trustpilot Loom **1.4/5 (n=205)** on 08-23-2026 scrape | Snapshot; rating moves | Quote as scrape-dated; do not present as eternal brand score |
| CleanShot Cloud **24h auto-delete** | Reviews citing Reddit, not CleanShot primary doc in pack | Keep as **needs_check** until primary settings/docs screenshot |
| CleanShot **$29 / $19 / Cloud Pro $8-$10** | Official pricing fetch timed out; recaps + why-updates-expire | Label **recap-backed** in HTML; re-fetch before customer quotes |
| Screen Studio **$29/mo or $108/yr**, export gated | Official page timed out; X + recaps | Same: **recap-backed**; confirm on screen.studio before sales copy |
| Tella Pro pricing | Official md vs Vyds June cut | Already flagged; prefer official md |
| Loom "audio delayed 2-3 secs" / stuck uploading | Trustpilot quotes | Discourse **Confirmed as reviews**; not lab-verified defect rates |
| Viewer-tracking as "killer feature" | X anecdotes | Directional only |
| Snagit **$39/user/yr**, Mac scroll flaky | Store + recaps | Price: check store live. Scroll flaky: **recap** |

---

## Analyst score hygiene (do not launder into "market data")

- Freq / Intensity / WTP / Fit (job table) and pain board scores are **ordinal analyst judgments**, not survey %.
- "Highest combined score" (J1, J2, J3, J7, J5) is a **ranking aid**, not measured willingness-to-pay.
- HTML and tickets should say **analyst score**, never "users report X%".

---

## Bet alignment check

| Ship-3 cut | Evidence bar | Hygiene |
|------------|--------------|---------|
| Mic (#3) | Primary upstream + Loom free-cap docs | **Strong** |
| Clipboard annotate (#15/#16/#10) | Primary upstream issues | **Strong** |
| Scroll (#12) | Primary upstream + Apple no-scroll + competitor existence | **Strong** |
| Redaction gate | Intensity high; Snagit marketing; Screendrop feature exists | **Medium** (leak frequency not census) |
| One-sitting Worker | HN/X privacy + architecture exists | **Medium** (setup friction is inference) |

Anti-bets are coherent with wedge (no Windows, no viewer-analytics default, no central SaaS).

---

## Freeze rules for @Report Maker

1. Keep the pack's **Uncertainty flags** section near the top of any HTML.
2. Tag matrix cells that use `?` or "recaps" visually as **needs_check**.
3. Do not promote Trustpilot aggregate or Screen Studio/CleanShot dollar figures into hero callouts without "as of / scrape / recap" labels.
4. Preserve "if we only ship 3" ordering; do not invent a fourth must-ship.

---

## Optional follow-ups (not blockers)

1. Re-fetch live CleanShot + Screen Studio + Tella pricing pages; close conflicts.
2. Primary CleanShot Cloud retention/default-delete doc.
3. Reddit primary threads (MPU / r/macapps) to replace second-hand citations where possible.
4. G2 corpus when JS wall solvable (Italian hike quote stays anecdotal).

---

## Bottom line

Maintainer can open engineering tickets from `bets-90d.md` **without another meeting**. Claim hygiene does not overturn the ship-3 cut. It only constrains how hard numbers and competitor prices are spoken in HTML and external copy.
