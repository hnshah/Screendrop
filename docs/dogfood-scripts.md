# Dogfood scripts (Mac QA from top pains)

Date: 08-22-2026  
Parent: `docs/market-screendrop-20260822.md`  
Layers: `docs/TESTING.md` (L3 UI + L4 persona loops)  
Build: `./scripts/build-debug.sh` with Screen Recording, Microphone, Camera, Input Monitoring granted.

These are **manual / peekaboo** scenarios. Time them. Fail the script if Desktop grows a new `Screen Shot *.png` unless the step says otherwise.

Personas from `docs/PRODUCT-WEDGE.md`: indie founder, support engineer, OSS maintainer, designer-dev.

---

## D1. OSS maintainer: 90s PR walkthrough with mic (pains 1, 4, 5)

**Pain:** Loom Starter dies at 5:00 and 25 clips. Users need a longer local file with a voice.

1. Launch Debug Screendrop. Confirm History is empty or note the latest item.
2. Option+4 (or recording picker). Select one window (this repo in a browser or Xcode).
3. Enable the built-in mic. Speak a test phrase ("mic check 1 2 3") before record.
4. Start recording. Narrate a fake PR for 70 to 90 seconds. Do not stop at 0:05:00. Confirm the timer counts **up**, not down from 5:00.
5. Stop. Open History. Play the file.
6. **Pass:** Intelligible mic on the timeline. Duration >= 70s. File lives under Application Support History, not Desktop.
7. **Fail:** Silent `.mov`, clip hard-stopped at 5:00, or upload required before playback.

Maps to bet 1 / [upstream #3](https://github.com/fayazara/Screendrop/issues/3).

---

## D2. Support engineer: numbered steps to Slack clipboard (pains 7, 8)

**Pain:** Annotate then paste is too many clicks. Apple dumps PNGs on Desktop.

1. Open a dummy settings window with four visible controls.
2. Option+3 area capture of that window.
3. From the preview stack, open Annotate. Add numbered markers 1 to 4. Add one arrow.
4. Press Ctrl+C (or Cmd+C). Do not hunt a checkmark.
5. Switch to Notes or a Slack compose window. Paste.
6. **Pass:** Annotated PNG pastes. Preview dismissed. `~/Desktop` has no new screenshot. Time start-of-hotkey to paste <= 10s after the editor is open.
7. **Fail:** Preview stays up, clipboard empty, or a `Screen Shot` file appears on Desktop.

Maps to bet 2 / [#15](https://github.com/fayazara/Screendrop/issues/15) [#16](https://github.com/fayazara/Screendrop/issues/16).

---

## D3. Indie founder: 30s Discord update, then self-host link (pains 5, 6, 11)

**Pain:** People will not pay Loom $18/user. They want a private link without a SaaS account.

1. Precondition: Worker URL + token already verified, **or** run D10 first.
2. Record 25 to 35 seconds of the app window + mic. Use the default Studio preset (auto-zoom on).
3. Stop. Confirm a local History project exists before any upload.
4. Upload. Confirm the clipboard behavior matches Settings (link only if "copy link" is on).
5. Open the link in a private browser window with no Cloudflare/Screendrop login.
6. **Pass:** Page plays without an account. Local file still plays if you quit the network. No Loom/CleanShot account involved.
7. **Fail:** Viewer bounced to a signup. Local file missing. Upload required before the recording is usable.

Maps to bets 1, 5.

---

## D4. Support engineer: redact a fake API key (pain 12)

**Pain:** Tokens leak into Slack and share links.

1. Open TextEdit with `sk-test-THISISFAKESECRETVALUE123456` and an email `user@example.com`.
2. Area-capture the window.
3. Run Smart Redaction. Confirm both strings are proposed.
4. Apply blur or pixelate. Copy to clipboard. Paste into Notes.
5. If Cloud is configured, upload. Open the share page. Zoom in on the secret.
6. **Pass:** Pasted and shared images have the secret unreadable. Original remains recoverable via `.screendrop` sidecar / History.
7. **Fail:** Cleartext key on the share page or on the clipboard image.

Maps to bet 4.

---

## D5. Designer-dev: vertical scroll of System Settings (pain 9)

**Pain:** Apple cannot scroll-capture. Users stitch four PNGs.

1. Open System Settings → a pane taller than the display (Privacy & Security or Keyboard).
2. Invoke scroll capture (once shipped) or the current best path documented in the build.
3. Scroll to the bottom of the pane.
4. Open the result in History at 100%.
5. **Pass:** One still shows the full pane. No missing stripes, no doubled sections large enough to mislead a bug report.
6. **Fail:** Only the first viewport, or a torn stitch. Work around by noting "not shipped" and attaching two manual captures.

Maps to bet 3 / [#12](https://github.com/fayazara/Screendrop/issues/12).

---

## D6. Indie founder: mic + system audio together (pain 15 / J9)

**Pain:** Kap never had system audio. Demos need both voice and the app's beeps.

1. Play a local video or a UI with audible clicks (QuickTime a sample file, volume up).
2. Recording picker: mic on, system audio on, camera off.
3. Record 20 seconds. Speak over the playback.
4. Stop. In Studio or Quick Look, isolate or listen for both tracks.
5. **Pass:** Voice and system audio both present. Muting one (if the UI allows) does not kill the other.
6. **Fail:** Either track missing. Do not fail the whole gate on system audio if mic (D1) already failed. File separately.

Maps to bet 1. Kap contrast: https://github.com/wulkano/Kap/issues/1265

---

## D7. Designer-dev: wide table / horizontal scroll (pain 9)

**Pain:** #12 asked for horizontal **and** vertical.

1. Open a wide spreadsheet or a GitHub file with a long line, zoomed so it scroll-h-overflows.
2. Horizontal scroll capture (or document "not shipped").
3. Inspect the still at 100%.
4. **Pass:** One image contains the overflow columns/line. Readable text, not smeared.
5. **Fail:** First column only, or a smear. Acceptable pre-ship result: explicit error, not a corrupt PNG.

Maps to bet 3 / [#12](https://github.com/fayazara/Screendrop/issues/12).

---

## D8. Overlay Ctrl+C versus Apple thumbnail (pains 7, 8)

**Pain:** Apple needs Control-Shift-Cmd-3 or a thumbnail menu to avoid Desktop.

1. Baseline: Shift-Cmd-3 once. Confirm Apple wrote `Screen Shot *` to Desktop. Delete it.
2. Option+1 fullscreen (or Option+3). Wait for Screendrop overlay.
3. Press Ctrl+C / Cmd+C immediately. Do not click Copy.
4. Paste into Notes.
5. Repeat with after-capture automation: Copy enabled, Upload enabled (if Worker configured). Capture again. Check clipboard contents.
6. **Pass:** First paste is the image. Second paste is still the **image** unless the user opted into "copy link" (#10). Desktop unchanged.
7. **Fail:** Clipboard is a `https://` URL when the user wanted pixels. Overlay stays forever.

Maps to bet 2 / [#10](https://github.com/fayazara/Screendrop/issues/10) [#15](https://github.com/fayazara/Screendrop/issues/15).

---

## D9. Studio default preset versus QuickTime raw (pains 10, 11)

**Pain:** Screen Studio charges $108/yr and gates export. Users want click-follow zoom without CapCut.

1. Record 20 seconds of clicking through three UI targets. Camera optional.
2. Open Studio. Confirm auto-zoom blocks exist (or generate them).
3. Export MP4 to a temp folder (not Desktop). Note duration of export.
4. Control: Shift-Cmd-5 record the same clicks, save to Desktop, then delete after compare.
5. **Pass:** Screendrop export has smoother cursor/zooms than the QuickTime raw. Export succeeded **without** a license dialog. File is a normal MP4.
6. **Fail:** Export paywall, crash, or a result indistinguishable from raw with zooms advertised on.

Maps to "make presets dead-simple" in `docs/PRODUCT-WEDGE.md`. Contrast: https://x.com/salatech2/status/2083900279771054209

---

## D10. Cold Cloudflare Worker share (pains 2, 6, 13)

**Pain:** Loom seats and CleanShot 24h deletes. Viewers must not need a Screendrop account.

1. On a machine or profile with **empty** Settings → Cloud, start a timer.
2. Copy the generated upload token.
3. Follow Deploy to Cloudflare (or the wrangler runbook if the button is down).
4. Paste Worker URL. Verify Connection.
5. Upload one still and one short recording.
6. Open both links in a private window. Wait 10 minutes. Reload. Confirm the video is still there (not a 24h silent delete).
7. **Pass:** Verify succeeded. Both links work logged-out. Recording still present after 10 minutes. Timer for steps 2 to 5 is recorded (target: one sitting).
8. **Fail:** Viewer signup wall. Verify green but 404. File vanished. Clipboard stolen contrary to #10.

Maps to bet 5. Anti-pattern: https://klicktrust.com/cleanshot-x-review/

---

## Timing sheet (fill when you run)

| Script | Persona | Start | End | Desktop clean? | Result | Notes |
|---|---|---|---|---|---|---|
| D1 | OSS maintainer | | | | | |
| D2 | Support | | | | | |
| D3 | Indie founder | | | | | |
| D4 | Support | | | | | |
| D5 | Designer-dev | | | | | |
| D6 | Indie founder | | | | | |
| D7 | Designer-dev | | | | | |
| D8 | Support | | | | | |
| D9 | Indie founder | | | | | |
| D10 | OSS maintainer | | | | | |

Wedge loop metrics from `docs/PRODUCT-WEDGE.md`: time-to-clipboard (still), time-to-share-link (video), steps with zero Desktop pollution, redaction-before-share rate.
