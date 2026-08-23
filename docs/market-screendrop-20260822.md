# Screendrop market research (2025 to 2026)

Date: 08-22-2026  
Repo: [hnshah/Screendrop](https://github.com/hnshah/Screendrop) (fork of [fayazara/Screendrop](https://github.com/fayazara/Screendrop))  
Brief: `docs/BOT-RESEARCH-BRIEF.md`  
Stance: local-first Loom + CleanShot hybrid, CC0, optional self-host Cloudflare share.

## How to read this

This is a product-bet memo, not a TAM essay. Every pain is scored from **observed user language** (reviews, X, HN, GitHub issues, vendor support pages). Vendor marketing is used only for price and feature facts.

### Methods run

| Method | Status | Notes |
|---|---|---|
| Official pricing / support pages | Done | Loom (Atlassian), CleanShot X, Shottr, Snagit, Apple Support, Tella `pricing.md` |
| Review mining | Partial | Trustpilot Loom page loaded. G2 review HTML often empty (JS wall). Capterra quotes only via secondary recap. |
| Reddit | Partial | `r/macapps` site-search failed. MPU Talk + Microsoft Community + vendor-cited Reddit used. Flagged as second-hand where not a primary thread. |
| HN | Done | Self-host Loom alternatives, CleanShot license wording |
| X (2025-01-01 to 2026-08-23) | Done | Loom 5-min / price, CleanShot subscription, Screen Studio $108, privacy |
| Competitor teardown | Done | Matrix in section C |
| Job stories | Done | 10 scored stories below |
| Upstream issues | Done | fayazara #3, #10, #12, #15, #16 |

### Uncertainty flags (do not treat as census)

- **No invented survey stats.** Frequency and intensity scores are analyst judgments from how often the complaint appears, not percentages of a sampled population.
- **Tella price conflict:** official `https://www.tella.tv/pricing.md` lists Pro at $13/mo annual ($26 monthly). A 06-11-2026 Vyds recap claims a June 2026 cut to $6.50/$9.50 annual. Use the official page until someone re-fetches tella.com/pricing.
- **Screen Studio official pricing page timed out** on 08-23-2026. Multiple independent 2026 recaps (Rekort check 07-23-2026, PriceTimeline 09-30-2025, CursorClip 2026) agree on $29/mo or $108/yr and no new lifetime SKU. Confirm on [screen.studio](https://screen.studio) before quoting a customer a number.
- **CleanShot.com/pricing fetch timed out.** Price figures below come from CleanShot's own `why-updates-expire` page plus consistent 2026 recaps of the pricing page ($29 one-time, $19/yr updates, Cloud Pro $8/user/mo annual or $10 monthly).
- **Shottr is not open source.** At least one 2026 comparison site (bundl.run) claims it is. Official site and purchase page contradict that. Do not repeat the error.
- **G2 Italian review** of an 80% Loom price hike is a real G2-hosted quote, but the page is a comparison/pricing surface, not a full review corpus.

---

## A. Executive wedge

Screendrop wins for **Mac builders, PMs, support engineers, and OSS maintainers** who already live in Slack, Linear, GitHub, and Discord, and who are tired of three traps: Loom's 5-minute / 25-video / seat-tax cloud, CleanShot's paid scroll + optional Cloud Pro, and Screen Studio's export-gated subscription. The job we own is the **builder loop**: see a bug or UI, capture or record on-device, annotate or auto-zoom, then **paste an image or drop a self-host link** without a Screendrop account, without Desktop PNG litter, and without a SaaS watching who opened the file. We do not win by becoming another hosted video network. We win by being the native, CC0, local-first tool that already has Studio zooms, numbered markers, smart redaction, and a Cloudflare Worker, then closing the four gaps users already filed upstream: **mic audio (#3), scroll capture (#12), Ctrl+C preview/editor (#15/#16), clipboard vs link (#10)**.

---

## Job stories (10), scored 1 to 5

Scores are 1 (low) to 5 (high). **Fit** means fit to Screendrop as it exists: Swift menu-bar, local History + `.screendrop` sidecars, optional Worker, App Intents, CC0.

| # | Job story | Freq | Intensity | WTP | Fit | Notes |
|---|---|---:|---:|---:|---:|---|
| J1 | When I need to show a bug or PR, I want a 30 to 90s screen+mic clip with a private link, so a reviewer can watch without booking a call. | 5 | 5 | 5 | 5 | Loom's core job. Free plan kills it at 5:00 and 25 clips. Mic is still open on Screendrop (#3). |
| J2 | When I grab a UI, I want numbered steps + blur, then the image on my clipboard, so I can paste Slack/Linear in one gesture. | 5 | 5 | 4 | 5 | Highest daily frequency. Users already asked for Ctrl+C dismiss (#15/#16) and image-not-URL (#10). |
| J3 | When a settings page or Slack thread is taller than the display, I want one scrolling still, so I stop stitching four PNGs. | 4 | 4 | 4 | 5 | CleanShot's paid reason to exist; Shottr already has it for free; Apple does not; Screendrop #12 is open. |
| J4 | When I record a product demo, I want click-follow zooms and a rebuilt cursor, so I do not open CapCut. | 3 | 4 | 4 | 5 | Screen Studio moat. Screendrop Studio already has auto-zoom; the bet is **presets + default path**, not a new engine. |
| J5 | When the frame has an API key or email, I want redaction before any share, so I do not leak into Slack or a Worker link. | 3 | 5 | 4 | 5 | Snagit markets Smart Redact. Screendrop already has smart redaction on stills. Gate it on the share path. |
| J6 | When I write an SOP, I want numbered circles that I can re-edit next week, so I do not flatten into a dead PNG. | 3 | 3 | 3 | 5 | Sidecars are the wedge vs Preview Markup and vs Shottr's flatter editor. |
| J7 | When I share with a customer or a public repo, I want a link on **my** Cloudflare, so I am not on Loom's Atlassian login or CleanShot Cloud expiry. | 3 | 5 | 5 | 5 | HN + X self-host demand is loud. Worker exists; setup still has friction. |
| J8 | When I am on a Mac all day, I want capture that never dumps `Screenshot YYYY-MM-DD at HH.MM.SS.png` on the Desktop. | 5 | 3 | 3 | 5 | Apple's own support page documents Desktop as the default. CleanShot/Shottr already sell "unclutter." |
| J9 | When I record system UI plus my voice, I want mic **and** system audio as separate tracks, so a demo is audible and editable. | 4 | 4 | 4 | 4 | Kap never had system audio. Screendrop README claims separate sources; #3 says mic is not wired. |
| J10 | When I am done recording, I want captions from on-device speech, so a muted Slack watcher can still read the walkthrough. | 3 | 3 | 3 | 4 | Loom/Tella sell cloud AI captions. Screendrop already has on-device Speech Analyzer. Make it the default for narrated clips. |

**Highest combined score:** J1, J2, J3, J7, J5.

---

## B. Pain leaderboard

Frequency and intensity are 1 to 5 analyst scores. See uncertainty flags above.

| # | pain | who | frequency | intensity | current workaround | competitor failing | Screendrop opportunity | evidence URLs |
|---|---|---|---:|---:|---|---|---|---|
| 1 | 5-minute recording wall + 25-video lifetime cap on free async video | Indie founders, freelancers, students, anyone not on a team Loom seat | 5 | 5 | Split a 10-min walkthrough into two Looms; delete old videos to record new ones; pay $18/user/mo | Loom Starter: timer counts from 5:00 to 0:00 and stops. 25 includes archived videos. | Unlimited local recordings. Public share only if the user deploys a Worker. No 5-min trap. | https://support.atlassian.com/loom/docs/how-long-can-i-record/ https://support.atlassian.com/loom/docs/starter-plan-faq/ https://www.atlassian.com/software/loom/pricing https://x.com/r_yanwalker/status/1929680214613020886 |
| 2 | Atlassian seat tax: Creator Lite gone, every workspace member becomes a paid Creator | Team admins, studios with lurker seats | 4 | 5 | Audit CSV, deactivate users before next bill, or churn | Official Atlassian doc: Creator Lite discontinued; upgraded users billed after grace; "you cannot stay on current pricing" | Zero Screendrop seats. Link viewers are not licensed. | https://support.atlassian.com/loom/docs/loom-customer-integration-with-atlassian-pricing-billing-and-role-changes/ |
| 3 | Cannot download your own Loom on free; branding on every viewer page | Solo users evaluating Loom | 4 | 4 | Third-party downloaders; stay on paid | Atlassian pricing: Upload and download sit on Business, not Starter | Local `.mov` / History is the source of truth. Export is free. | https://www.atlassian.com/software/loom/pricing https://clipy.online/blogs/what-happens-to-loom-videos-when-you-downgrade-2026/ |
| 4 | Loom reliability after Atlassian: stuck uploads, crashes, audio desync, login MFA hell | Daily work users on paid seats | 4 | 5 | Re-record; jump to Jumpshare/Zight; write the email | Trustpilot 1.4/5 (n=205 on 08-23-2026 scrape). Quotes: "videos get stuck at Uploading"; "audio is delayed 2-3 secs"; "since Atlassian, buggy" | Local-first recording never depends on an upload to finish the job. | https://www.trustpilot.com/review/loom.com |
| 5 | Price shock and "I will never pay for Loom" | Individuals, small teams | 5 | 4 | Stay on 5-min free; switch to CleanShot/Zight/self-host | Business $18/user/mo, Business+AI $24. Trustpilot: "$400 for 4 seats"; "charge 200 a year for basic features" | CC0. Compete on craft, not lock-in. | https://www.atlassian.com/software/loom/pricing https://x.com/austriker27/status/1900386337938956703 https://x.com/AlexYancher/status/1954970466864730504 https://x.com/SibyAlwyn/status/1985708660774093170 https://www.trustpilot.com/review/loom.com |
| 6 | Viewer-tracking tax: "who watched" is Loom's killer feature **and** a privacy smell | Sales likes it; engineers and self-hosters hate it | 3 | 4 | Self-host; send a file; use Slack native clip | X: "killer feature for loom is tracking who watched"; opposite: "I prefer data privacy & ownership" | Worker can add view counts later. Default must be private file or untracked link. | https://x.com/eddy0k/status/2041880172794622401 https://x.com/sarkerium/status/2075286303332348168 https://news.ycombinator.com/item?id=41347422 |
| 7 | Desktop PNG landfill from macOS Screenshot | Every Mac user | 5 | 3 | Change save location; hold Control to copy; install CleanShot/Shottr | Apple: default save is Desktop, `Screen Shot [date] at [time]` | History in Application Support. Overlay copy. No Desktop unless the user asks. | https://support.apple.com/en-us/102646 https://shottr.cc/ |
| 8 | Annotate then paste is too many clicks | Support, PMs, designers | 5 | 4 | Preview Markup; CleanShot overlay; Shottr editor | Users filed Screendrop #15/#16 the same day: close preview on Ctrl+C; copy from editor without hunting the checkmark | Make clipboard the default after annotate. Dismiss overlay. Do not overwrite image with a URL (#10). | https://github.com/fayazara/Screendrop/issues/15 https://github.com/fayazara/Screendrop/issues/16 https://github.com/fayazara/Screendrop/issues/10 |
| 9 | No native scrolling capture | Docs, support, anyone capturing Slack/settings | 4 | 5 | Stitch in Preview; pay CleanShot; use Shottr | Microsoft Community 07-13-2026: "built-in Mac screenshot tool only captures what's visible... stitching... incredibly tedious." X: "Stock macOS screenshot tool can't scroll-capture a long Slack thread" | Ship #12 (horizontal + vertical) as a first-class still tool. | https://techcommunity.microsoft.com/discussions/windows11/how-to-take-a-scrolling-screenshot-on-mac-for-long-pages/4536361 https://x.com/HeyGurisaroy/status/2079520939805659194 https://github.com/fayazara/Screendrop/issues/12 https://shottr.cc/ |
| 10 | Screen Studio subscription + export hostage | Indie makers, YouTubers, DevRel | 4 | 5 | Keep a legacy lifetime build; pirate-adjacent ffmpeg renderers; switch | X: "paying $108/yr just to export your own recordings to MP4"; "lifetime 2 yrs ago... won't cover newer version"; "OBS is free but takes 3 hours... Screen Studio is easy but $108/year" | Studio already has auto-zoom. Export must never be paywalled. CC0. | https://x.com/salatech2/status/2083900279771054209 https://x.com/AL_Nick_/status/2041394805767655795 https://x.com/IndieSamMaker/status/1988023046775468310 https://x.com/aakashgupta/status/2039289929281466692 https://pricetimeline.com/data/price/screen-studio |
| 11 | Auto-zoom / cursor polish is the demo moat, and it is sold as a subscription | Anyone shipping a 30s product clip | 3 | 4 | CapCut after OBS; pay Screen Studio; use a clone | HN 2025: "Loom, Screenity, Kap... missing the one thing... automatic, natural-looking zooms" | Do not rebuild the engine. Ship **one default preset** that looks finished on stop. | https://news.ycombinator.com/item?id=47306290 |
| 12 | Secret leakage (tokens, emails) on stills and videos | Support, founders demoing staging | 3 | 5 | Manual blur; hope; refuse to record | Snagit sells Smart Redact. CleanShot/Shottr have blur/pixelate. Video redaction is rare. | Smart redaction already in annotation studio. Block upload until the user confirms or dismisses findings. | https://www.techsmith.com/store/snagit https://shottr.cc/ |
| 13 | CleanShot Cloud 24-hour auto-delete footgun | People who treat a CleanShot link as archival | 2 | 4 | Turn the setting off after losing files; stop using Cloud | Reviews (citing Reddit): "videos get deleted automatically and nobody tells you" after 24 hours | Worker links should default to **keep**. Self-destruct is opt-in, never a silent default. | https://klicktrust.com/cleanshot-x-review/ https://doolpa.com/article/cleanshot-x |
| 14 | Tool split: Shottr has stills+scroll+ruler but no video; CleanShot has video+cloud but no ruler and a renewal | Designers + engineers on one Mac | 4 | 3 | Run both; pay both; ignore video | Official Shottr: no recorder. CleanShot: $19/yr to keep getting updates. MPU Talk 11-26-2025: "most of my screenshots go into chat apps, I decided on Shottr as its cheaper" | One app for stills + video. Ruler is an anti-bet. Chat-paste speed is the bet. | https://shottr.cc/ https://cleanshot.com/why-updates-expire https://talk.macpowerusers.com/t/new-shottr-version/43534 |
| 15 | Kap is effectively abandoned; no system audio; Electron rot | OSS GIF/docs crowd | 3 | 4 | NewKap fork; OBS; Screendrop/CleanShot | Last Kap release Oct 2022. Issue #1265 (01-20-2026): "Is this project getting abandoned?" NewKap (03-15-2026) lists Sonoma/Sequoia hangs and permission crashes. | Native Swift, maintained, mic+system audio, GIF later if needed. | https://github.com/wulkano/Kap/issues/1265 https://github.com/wulkano/kap/issues/1270 https://github.com/MuntasirMalek/NewKap |

---

## Switching triggers

### Why people leave Loom

1. **The 5-minute stop.** Official Starter timer hits 0:00 and ends the recording. A 90s PR walkthrough fits; a 7-min support repro does not. Primary: [How long can I record?](https://support.atlassian.com/loom/docs/how-long-can-i-record/).
2. **The 25-clip silo.** Official FAQ: 25 videos **and screenshots**, archived count, downgrade freezes new recording. Primary: [Starter plan FAQ](https://support.atlassian.com/loom/docs/starter-plan-faq/).
3. **Seat reclassification.** Creator Lite becomes a paid Creator. Admins cannot keep old pricing. Primary: [Atlassian integration pricing](https://support.atlassian.com/loom/docs/loom-customer-integration-with-atlassian-pricing-billing-and-role-changes/).
4. **Reliability + login.** Trustpilot cluster after Atlassian login: uploads stuck, MFA codes, audio drift. Primary: [trustpilot.com/review/loom.com](https://www.trustpilot.com/review/loom.com).
5. **Price as identity.** X, 03-14-2025: "loom is way too expensive, way too buggy" ([@austriker27](https://x.com/austriker27/status/1900386337938956703)). X, 08-11-2025: "We just moved to zight off loom. (Same issue plus got too expensive)" ([@AlexYancher](https://x.com/AlexYancher/status/1954970466864730504)).
6. **Privacy / ownership.** X, 07-09-2026: "I don't want to pay for monthly loom subscription just for screen-recordings. Also I prefer data privacy & ownership." ([@sarkerium](https://x.com/sarkerium/status/2075286303332348168)). HN Clipshare thread: people want S3/R2, not Loom lock-in ([item 41347422](https://news.ycombinator.com/item?id=41347422)).

### Why people pay CleanShot

- Scroll capture, hide-desktop, overlay, annotation, GIF/video, optional Cloud link. $29 feels cheap versus Loom seats. X, 07-21-2026: stock macOS cannot scroll a Slack thread; CleanShot "does scrolling capture, annotation, OCR, and cloud uploads" ([@HeyGurisaroy](https://x.com/HeyGurisaroy/status/2079520939805659194)).
- They stay until **Cloud Pro** or **$19 update renewal** feels like a subscription, or they see Capso/Screendrop as free native replacements. X, 05-27-2026 quote-tweet of Fayaz's launch: "There goes my cleanshot x subscription" ([@thiernoyounous](https://x.com/thiernoyounous/status/2059453528330891590)). X, 11-10-2025: would leave CleanShot "just to avoid paying a yearly subscription fee" ([@mweiner_13](https://x.com/mweiner_13/status/1987694616892588535)).

### Why people stay on free Shottr

- Official: free forever with nag after 30 days; $12 one-time / $30 Friends Club; not a subscription. [shottr.cc](https://shottr.cc/) + [purchase.html](https://shottr.cc/purchase.html).
- It is 2.3 MB, 17 ms grab, scroll + OCR + ruler + pixelate. Chat-first users on MPU Talk picked it because "most of my screenshots go into chat apps" and it is cheaper ([MPU Talk](https://talk.macpowerusers.com/t/new-shottr-version/43534)).
- They leave Shottr when they need **video**, **polished share pages**, or a less-naggy commercial license. Shottr added S3 upload in v1.9 (11-23-2025), which narrows the share gap but still is not a Loom player.

### Why Screen Studio users churn or rage

- Lifetime SKU removed ~09-30-2025 (PriceTimeline). New path $29/mo or $108/yr. Export requires a paid plan (multiple 2026 recaps).
- X, 04-01-2026: "Screen Studio made the single pricing decision that guaranteed someone would clone them" ([@aakashgupta](https://x.com/aakashgupta/status/2039289929281466692)).
- X, 08-02-2026: built `screenstudio-to-mp4` because paying $108/yr "just to export your own recordings" felt wrong ([@salatech2](https://x.com/salatech2/status/2083900279771054209)).

---

## C. Competitor matrix

Values are 08-22-2026 research. "?" means not verified on an official live page in this pass.

| | Price model (verified) | Still capture | Scroll | Annotate depth | Record + mic + system audio | Camera bubble | Auto-zoom | Captions / transcript | Share model | Privacy default | Mac quality |
|---|---|---|---|---|---|---|---|---|---|---|---|
| **Screendrop** | CC0, free. User pays only their own Cloudflare if they share. | Display / window / area. History + sidecars. | **Missing** (#12) | High: shapes, numbers, blur, pixelate, crop, backgrounds, smart redaction | Record yes. **Mic broken** (#3). README claims separate tracks. | Yes (README) | Yes in Studio | On-device Speech Analyzer | Optional Worker (R2+D1). No central account. | Local-first. Upload is explicit. | Native Swift menu-bar. macOS 26.4+ |
| **Loom** | Starter $0: 25 items, 5 min, 720p. Business $18/user/mo. Business+AI $24. Enterprise custom. Annual ~17% off. | Yes, unlimited on all plans per pricing FAQ | No | Basic drawing | Yes (cloud). Meeting length unlimited even on Starter. | Yes | Weak vs Screen Studio | 50+ languages on Starter; AI edit on +AI | Atlassian-hosted. Viewer insights. Download on Business+. | Cloud default. Tracking is the product. | Desktop + Chrome. Post-Atlassian login complaints. |
| **CleanShot X** | App $29 one-time + 1 year updates; $19/seat/yr to renew updates; Cloud Pro $8/user/mo annual or $10 monthly (recaps). Setapp bundle. | Excellent overlay | Yes (paid app) | High | Video + GIF. Webcam + screen (HN 2023+). | Yes | No (recaps) | OCR yes. Captions ? | Optional Cloud, 1 GB on Basic. 24h video delete default (reviews). | App works offline. Cloud is optional. | Native, Mac-only, praised. |
| **Shottr** | Free + nag. $12 Basic / $30 Friends Club, one user / 5 Macs. Commercial needs a license. | Fast stills, pin, combine | Yes | Good + ruler + magnifier + hand-drawn (v1.9) | **No video** | No | No | OCR + QR | S3-compatible upload (v1.9, 11-23-2025). Friends Club cloud beta in some recaps. | Telemetry on by default; can disable. Contacts shottr.cc for version + license. | Tiny native Apple-silicon app. |
| **Screen Studio** | New buyers: $29/mo or $108/yr (recaps, 07-23-2026 Rekort check). Legacy lifetime exists. | Weak (recorder first) | No | Light | Yes (recaps) | Yes | **Best-in-class** | Recaps say no transcript edit | Local project. **Export gated** on subscription (recaps + X) | Local project files | Native Mac. Pricing is the revolt. |
| **Tella** | Official md: Pro $26/mo or $13/mo annual; Premium $39 / $19. 7-day trial. **No forever-free.** Vyds claims $6.50/$9.50 after 06-2026. **Conflict.** | Secondary | ? | Blur, highlight, layouts | Screen + cam + mic + system. 6h clip cap. | Yes | Yes | 106 languages, transcript edit | Hosted player, comments, analytics. Custom domain on Premium. | Cloud product. Domain restriction on Premium. | Native Mac + Windows + Chrome. |
| **Kap** | Free MIT. Last upstream release Oct 2022. | Area | No | Minimal | Mic? **No system audio** (alt recaps). Unreliable on Sonoma/Sequoia. | Plugins historically | No | No | Local export GIF/MP4/WebM | Local | Electron. Community fork NewKap. |
| **Snagit** | Official store: Individual **$39/user/yr**. Bundled in Camtasia plans from $39/yr. Perpetual gone for new buyers (2025, recaps). | Excellent + step capture | Yes (Mac less reliable per recaps) | Deep + stamps + Smart Redact | Video yes; editor limited vs Camtasia | Limited | No | Screencast host: 25 videos included | Screencast cloud, 25 videos | Vendor cloud optional | "Port" feel, 420 MB, slower editor (recaps). Official: macOS 14+. |
| **Apple Screenshot + QuickTime** | Free | Shift-Cmd-3/4/5. Tahoe HDR HEIF option. | **No** | Markup on thumbnail / Preview | Shift-Cmd-5 record. Mic optional. No camera bubble. | No | No | No | File on Desktop or Control-clipboard | Local files | Native, but Desktop default + no scroll + no share page. |
| **Cap / OpenLoom / etc.** | Cap: OSS + Cap Cloud. Others: self-host S3/R2. | Varies | Rare | Varies | Usually yes | Usually yes | Rare | Often cloud AI | Self-host or their cloud | Best when self-hosted | Mostly Electron/web. Crowded. Screendrop's edge is **native Mac craft**, not another Docker Compose stack. |

---

## Feature gaps Screendrop can own

Mapped to the brief's five gaps:

| Gap | Market proof | Screendrop today | 90-day own |
|---|---|---|---|
| **(a) Free polished async video without the 5-min trap** | Loom Starter stops at 5:00. Tella has no forever-free. Screen Studio gates export. | Studio zooms, captions, camera, Worker player exist. **Mic does not (#3).** | Default "PR walkthrough" preset: mic+screen, on-device captions, export or Worker link, no duration tax. |
| **(b) Annotate to clipboard speed** | #15/#16/#10 are user-filed in Aug 2026. Apple needs Control chord or thumbnail menu to avoid Desktop. | Overlay + editor exist. Copy and dismiss are not one key. Upload can steal the clipboard. | Cmd/Ctrl+C copies pixels, dismisses preview, never replaces the image with a URL unless asked. |
| **(c) Scroll capture** | Apple no. User #12. Shottr/CleanShot/Snagit yes. | Missing | Vertical + horizontal scroll as a first-class capture mode. |
| **(d) Redaction** | Token leaks are high-intensity, medium-frequency. Snagit markets it. | Smart redaction on stills exists. | Force a redaction pass before Worker upload. Path to video blur later (anti-bet if it slips the 90 days). |
| **(e) Self-host share without a SaaS account** | HN S3/R2 threads. X privacy. Cap/OpenLoom exist but are not native. | Worker + R2 + D1 designed. Settings Cloud flow in README. | One-sitting deploy, verify, upload. Viewers never create a Screendrop account. |

---

## D. Top 5 product bets for the next 90 days

### Bet 1. Microphone that actually records (async video core)

- **User job:** J1, J9. "When I walk a PR, I want my voice on the file."
- **Why now:** Without mic, Screendrop is not a Loom alternative. Issue #3 is open; PR #4 already exists upstream. Loom's free cap plus Atlassian pricing is the 2026 switching window.
- **MVP:** Selected mic writes an AAC track. Permission string in Info.plist. Visible mute state on the recording bar. Playback in History proves audio. System audio remains a separate toggle (do not block mic on system-audio bugs).
- **Success metric:** 10/10 dogfood recordings (D1, D3, D6, D9 in `dogfood-scripts.md`) contain intelligible narration. Zero silent files when the mic meter moved.
- **Kill criterion:** If ScreenCaptureKit + mic cannot be made reliable on macOS 26.4 in 30 days, ship a documented QuickTime fallback rather than fake the feature.
- **Upstream:** [fayazara/Screendrop#3](https://github.com/fayazara/Screendrop/issues/3), [PR #4](https://github.com/fayazara/Screendrop/pull/4).

### Bet 2. Clipboard-first annotate loop (still-image core)

- **User job:** J2, J8. Paste into Slack/Linear in one gesture.
- **Why now:** Highest frequency pain. Users already wrote the spec in #15, #16, #10. This is how CleanShot earned $29.
- **MVP:** (1) Ctrl/Cmd+C on preview copies PNG and dismisses. (2) Same in the editor without clicking the checkmark. (3) After-capture: copy image **and** upload must not overwrite clipboard with the URL (#10). (4) Default after-capture stays clipboard, not Desktop.
- **Success metric:** Timed dogfood D2 / D4 / D8: capture to Slack-paste **under 10 seconds** with numbers + one blur, zero Desktop files.
- **Kill criterion:** If overlay key handling fights IME or accessibility, ship a dedicated "Copy & close" button first, keys second.
- **Upstream:** [#15](https://github.com/fayazara/Screendrop/issues/15), [#16](https://github.com/fayazara/Screendrop/issues/16), [#10](https://github.com/fayazara/Screendrop/issues/10). Fork already has `fix/cloud-upload-keep-clipboard`.

### Bet 3. First-class scroll capture

- **User job:** J3.
- **Why now:** It is the still-image feature people pay CleanShot for and keep Shottr for. Apple still cannot do it (Apple Support 03-27-2026 page + 07-13-2026 Microsoft Community post).
- **MVP:** Vertical scroll of a window. Horizontal as a fast follow. Output one History still. Then annotate. Fail closed with a message rather than a torn stitch.
- **Success metric:** Dogfood D5 / D7: long Settings page and a long Slack thread each produce one usable PNG, stitch artifacts rare enough to ship.
- **Kill criterion:** If macOS scroll APIs are as flaky as Shottr's own "workaround when macOS scrolling capture issue" (Shottr 1.9 notes), ship **manual stitch assist** (align two captures) rather than a broken auto-scroll.
- **Upstream:** [#12](https://github.com/fayazara/Screendrop/issues/12).

### Bet 4. Redaction gate before share

- **User job:** J5.
- **Why now:** Intensity 5. Support and demo users leak tokens. Snagit charges $39/yr partly for Smart Redact. Screendrop already detects sensitive text on stills.
- **MVP:** Before Worker upload or "copy link", run smart redaction. User must apply, skip with a typed confirmation, or cancel. History keeps the clean original via sidecar.
- **Success metric:** Dogfood D4: a fake `sk-` key in frame is blurred on the uploaded PNG. Skip path requires an extra click.
- **Kill criterion:** If false positives block more than ~1 in 5 clean uploads in dogfood, default to **suggest** not **block**, and keep the extra click only for high-confidence secrets.
- **Upstream:** Product already has the detector. Video redaction is a later branch, not this MVP.

### Bet 5. Self-host share that a tired founder finishes in one sitting

- **User job:** J7.
- **Why now:** The market is full of "open-source Loom" Electron apps. Screendrop already has the native recorder plus a Worker. The remaining pain is **setup confidence**, not another player.
- **MVP:** Settings → Cloud: copy token, Deploy to Cloudflare, paste URL, Verify. Failure messages name the missing R2/D1/secret. After verify: one-click upload from overlay copies a link **only if** the user chose "copy link" (see Bet 2). Share page already has player + transcript per README. Document that viewers need no Screendrop account.
- **Success metric:** A cold Mac finishes deploy+verify+first upload in one timed session (dogfood D3 / D10). Link plays without login.
- **Kill criterion:** If Cloudflare's deploy-button flow stays brittle, ship a checked-in `wrangler` script with three env vars and a screenshot runbook. Do not build a hosted Screendrop SaaS.
- **Upstream:** [fayazara/screendrop-worker](https://github.com/fayazara/screendrop-worker).

---

## E. Anti-bets (traps that look sexy)

1. **Windows / Linux parity.** CleanShot stayed Mac-only and still owns stills. Snagit's cross-platform tax is a "port" UI. Out of scope for a Swift 26.4 menu-bar app.
2. **AI auto-editor arms race versus Tella.** Tella's whole product is hosted AI layouts, 106-language transcripts, and a paid player. Screendrop already has on-device speech. Do not rent GPUs or chase filler-word marketing.
3. **Social publishing and viewer-analytics as the default.** "Who watched" is why sales stays on Loom and why privacy-minded users leave. Optional Worker view counts are fine. Do not make tracking the homepage.
4. **Pixel-perfect design tool (ruler, APCA, OKLCH).** That is Shottr's 2.3 MB niche. Chat-paste users will not switch for a ruler. Do not fork the annotation model into a layout app.
5. **A central Screendrop account or multi-tenant cloud.** It contradicts CC0 + Worker. It recreates Loom's seat tax. Cap already occupies "OSS Loom with a cloud SKU."

Honorable mention trap: **GIF-first Kap nostalgia.** Ship MP4 + clipboard stills. GIF can wait.

---

## F. Dogfood script ideas

Full step lists live in `docs/dogfood-scripts.md`. The ten scenarios map to the leaderboard:

1. 90s PR walkthrough with mic + Worker link (pains 1, 4, 5, 15)
2. Numbered bug screenshot to Slack clipboard (pains 7, 8)
3. 30s Discord product update, no Desktop files (pains 5, 7, 11)
4. Redact API key, then paste (pain 12, Bet 4)
5. Vertical scroll of a Settings page (pain 9)
6. System audio + mic demo (pain 15 / J9)
7. Horizontal scroll or wide table (pain 9)
8. Overlay Ctrl+C dismiss vs Apple thumbnail (pains 7, 8)
9. Studio auto-zoom preset vs raw QuickTime (pains 10, 11)
10. Cold Cloudflare Worker share, viewer has no account (pains 2, 6, 13)

---

## G. Sources

### Official / primary product pages

- https://www.atlassian.com/software/loom/pricing
- https://support.atlassian.com/loom/docs/how-long-can-i-record/
- https://support.atlassian.com/loom/docs/starter-plan-faq/
- https://support.atlassian.com/loom/docs/loom-customer-integration-with-atlassian-pricing-billing-and-role-changes/
- https://cleanshot.com/why-updates-expire
- https://cleanshot.com/pricing (fetch timed out 08-23-2026; cited via consistent recaps)
- https://cleanshot.com/features
- https://shottr.cc/
- https://shottr.cc/purchase.html
- https://shottr.cc/kb/terms
- https://www.tella.tv/pricing.md
- https://www.tella.com/help/introduction/plans
- https://www.tella.com/help/billing/understanding-your-bill
- https://www.techsmith.com/store/snagit
- https://support.apple.com/en-us/102646
- https://support.apple.com/guide/mac-help/take-a-screenshot-mh26782/mac
- https://github.com/fayazara/Screendrop
- https://github.com/fayazara/screendrop-worker

### Upstream issues used as user language

- https://github.com/fayazara/Screendrop/issues/3
- https://github.com/fayazara/Screendrop/issues/10
- https://github.com/fayazara/Screendrop/issues/12
- https://github.com/fayazara/Screendrop/issues/15
- https://github.com/fayazara/Screendrop/issues/16

### Reviews and forums

- https://www.trustpilot.com/review/loom.com
- https://www.g2.com/compare/atlassian-loom-vs-microsoft-stream
- https://www.g2.com/it/products/atlassian-loom/pricing (80% hike quote)
- https://talk.macpowerusers.com/t/new-shottr-version/43534
- https://techcommunity.microsoft.com/discussions/windows11/how-to-take-a-scrolling-screenshot-on-mac-for-long-pages/4536361
- https://news.ycombinator.com/item?id=41347422
- https://news.ycombinator.com/item?id=35042662
- https://news.ycombinator.com/item?id=44087758
- https://news.ycombinator.com/item?id=47306290
- https://news.ycombinator.com/item?id=47308317
- https://klicktrust.com/cleanshot-x-review/
- https://github.com/wulkano/Kap/issues/1265
- https://github.com/wulkano/kap/issues/1270
- https://github.com/MuntasirMalek/NewKap

### X (primary user language)

- https://x.com/r_yanwalker/status/1929680214613020886
- https://x.com/austriker27/status/1900386337938956703
- https://x.com/AlexYancher/status/1954970466864730504
- https://x.com/SibyAlwyn/status/1985708660774093170
- https://x.com/rozzabuilds/status/2030182935425421323
- https://x.com/sarkerium/status/2075286303332348168
- https://x.com/eddy0k/status/2041880172794622401
- https://x.com/HeyGurisaroy/status/2079520939805659194
- https://x.com/thiernoyounous/status/2059453528330891590
- https://x.com/mweiner_13/status/1987694616892588535
- https://x.com/salatech2/status/2083900279771054209
- https://x.com/AL_Nick_/status/2041394805767655795
- https://x.com/IndieSamMaker/status/1988023046775468310
- https://x.com/aakashgupta/status/2039289929281466692
- https://x.com/fayazara/status/2059354628006006847

### Secondary recaps (price only, flagged)

- https://pricetimeline.com/data/price/screen-studio
- https://rekort.app/compare/screen-studio
- https://cursorclip.com/blog/cursorclip-vs-screenstudio/
- https://vyds.io/blog/tella-vs-kommodo
- https://doolpa.com/article/cleanshot-x

---

## Primary quotes (keep these in tickets)

> "If you're on a Starter plan, the timer will start at 5:00 and count down until you reach 0:00, at which point your recording will end."  
> Source: Atlassian, [How long can I record?](https://support.atlassian.com/loom/docs/how-long-can-i-record/)

> "Up to 25 videos and screenshots (video count includes archived videos). 5-minute recording limits."  
> Source: Atlassian, [Starter plan FAQ](https://support.atlassian.com/loom/docs/starter-plan-faq/)

> "Can I stay on my current pricing? No. As part of this integration, pricing is moving to current list prices."  
> Source: Atlassian, [Loom Customer Integration](https://support.atlassian.com/loom/docs/loom-customer-integration-with-atlassian-pricing-billing-and-role-changes/)

> "I love @CleanShot - loom is way too expensive, way too buggy"  
> Source: [@austriker27](https://x.com/austriker27/status/1900386337938956703), 03-14-2025

> "We just moved to zight off loom. (Same issue plus got too expensive)"  
> Source: [@AlexYancher](https://x.com/AlexYancher/status/1954970466864730504), 08-11-2025

> "I don't want to pay for monthly loom subscription just for screen-recordings. Also I prefer data privacy & ownership."  
> Source: [@sarkerium](https://x.com/sarkerium/status/2075286303332348168), 07-09-2026

> "Screen Studio (@screenstudio ) is an amazing macOS recorder but paying $108/yr just to export your own recordings to MP4?"  
> Source: [@salatech2](https://x.com/salatech2/status/2083900279771054209), 08-02-2026

> "By default, screenshots save to your desktop with the name 'Screen Shot [date] at [time].'"  
> Source: [Apple Support HT102646](https://support.apple.com/en-us/102646), published 03-27-2026

> "Need to capture a full webpage as a single image but the built-in Mac screenshot tool only captures what's visible... stitching them together manually, which is incredibly tedious."  
> Source: [Microsoft Community Hub](https://techcommunity.microsoft.com/discussions/windows11/how-to-take-a-scrolling-screenshot-on-mac-for-long-pages/4536361), 07-13-2026

> "Stock macOS screenshot tool can't scroll-capture a long Slack thread. I used to stitch 4 screenshots together manually in Preview."  
> Source: [@HeyGurisaroy](https://x.com/HeyGurisaroy/status/2079520939805659194), 07-21-2026

> "When you take a screenshot and the preview opens, I think it would be nice for UX to: 1. close the popup when you press Ctrl+C 2. copy it into the clipboard automatically"  
> Source: [fayazara/Screendrop#15](https://github.com/fayazara/Screendrop/issues/15), 08-19-2026

> "I would like the content copied to my clipboard after I capture the screenshot, AND I want it uploaded to the cloud as a backup, however I don't want the cloud URL copied to my clipboard"  
> Source: [fayazara/Screendrop#10](https://github.com/fayazara/Screendrop/issues/10), 06-26-2026

> "They are way overpriced, expect you to pay for services you don't want. Charged me almost 400 bucks for 4 seats"  
> Source: [Trustpilot / loom.com](https://www.trustpilot.com/review/loom.com)

> "I have encountered several instances where my video uploads get stuck at the 'Uploading' phase."  
> Source: [Trustpilot / loom.com](https://www.trustpilot.com/review/loom.com)

> "After your updates expire, you are able to renew them for another year at just $19 per seat or continue using the last version forever"  
> Source: [CleanShot, Why updates expire](https://cleanshot.com/why-updates-expire)

---

## If we only ship 3 things, ship these:

1. **Microphone audio that lands on the file** (Bet 1 / #3). Without this, "Loom alternative" is a README lie.
2. **Capture → annotate → clipboard in one shortcut** (Bet 2 / #15 #16 #10). This is the daily stills job CleanShot is paid for.
3. **Scroll capture that produces one still** (Bet 3 / #12). This is the stills job Shottr/CleanShot own and Apple refuses.

Bets 4 and 5 (redaction gate, one-sitting Worker) are the next two if the first three land.
