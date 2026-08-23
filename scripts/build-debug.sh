#!/usr/bin/env bash
# Local Debug build for Screendrop (hnshah machine — no Fayaz team cert).
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT"
export DEVELOPER_DIR="${DEVELOPER_DIR:-/Applications/Xcode.app/Contents/Developer}"
DD="${DERIVED_DATA_PATH:-$ROOT/.derivedData}"
LOG="${BUILD_LOG:-$ROOT/build-debug.log}"

"$DEVELOPER_DIR/usr/bin/xcodebuild" build \
  -project Screendrop.xcodeproj \
  -scheme Screendrop \
  -configuration Debug \
  -destination "platform=macOS" \
  -derivedDataPath "$DD" \
  CODE_SIGN_IDENTITY="-" \
  CODE_SIGNING_REQUIRED=NO \
  CODE_SIGNING_ALLOWED=YES \
  DEVELOPMENT_TEAM= \
  | tee "$LOG"

APP="$DD/Build/Products/Debug/Screendrop.app"
if [[ -d "$APP" ]]; then
  echo "APP=$APP"
  echo "Launch: open \"$APP\""
else
  echo "Build finished but app not found at $APP" >&2
  exit 1
fi
