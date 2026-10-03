#!/bin/bash
set -euo pipefail

ROOT="$(cd "$(dirname "$0")" && pwd)"
APP_SOURCE="$ROOT/Gratulacje Użytkowniku!.app"
SCRIPT="$ROOT/Gratulacje Użytkowniku.applescript"
AUDIO_SOURCE="$ROOT/Gratulacje Użytkowniku! - Psiki (192k).mp3"
VERSION="${1:-1.0.1}"
PKG_PATH="$ROOT/Gratulacje-Uzytkowniku-$VERSION.pkg"
DMG_PATH="$ROOT/Gratulacje-Uzytkowniku-$VERSION.dmg"
WORK_DIR="$(mktemp -d "${TMPDIR:-/tmp}/gratulacje-release.XXXXXX")"
trap 'rm -r -- "$WORK_DIR"' EXIT

if [[ ! -f "$SCRIPT" || ! -f "$AUDIO_SOURCE" ]]; then
	echo "Missing AppleScript source or bundled MP3." >&2
	exit 1
fi

rm -rf "$APP_SOURCE"
echo "Building app bundle..."
osacompile -o "$APP_SOURCE" "$SCRIPT"
mkdir -p "$APP_SOURCE/Contents/Resources"
cp "$AUDIO_SOURCE" "$APP_SOURCE/Contents/Resources/Gratulacje Użytkowniku.mp3"
xattr -c "$APP_SOURCE/Contents/Resources/Gratulacje Użytkowniku.mp3"

if ! /usr/libexec/PlistBuddy -c 'Print :CFBundleDisplayName' "$APP_SOURCE/Contents/Info.plist" >/dev/null 2>&1; then
	/usr/libexec/PlistBuddy -c 'Add :CFBundleDisplayName string Gratulacje Użytkowniku!' "$APP_SOURCE/Contents/Info.plist"
fi
codesign --force --deep --sign - "$APP_SOURCE"
codesign --verify --deep --strict "$APP_SOURCE"

echo "Building installer package..."
mkdir -p "$WORK_DIR/pkg-root/Gratulacje-Uzytkowniku.app"
ditto --norsrc "$APP_SOURCE" "$WORK_DIR/pkg-root/Gratulacje-Uzytkowniku.app"
xattr -cr "$WORK_DIR/pkg-root/Gratulacje-Uzytkowniku.app"
codesign --force --deep --sign - "$WORK_DIR/pkg-root/Gratulacje-Uzytkowniku.app"
pkgbuild --root "$WORK_DIR/pkg-root" \
	--identifier "pl.ziemowitpixel.gratulacje-uzytkowniku" \
	--version "$VERSION" \
	--install-location /Applications \
	"$PKG_PATH"

mkdir -p "$WORK_DIR/dmg-root"
cp "$PKG_PATH" "$WORK_DIR/dmg-root/"
textutil -convert rtf "$ROOT/LICENSE-AGREEMENT.txt" \
	-output "$WORK_DIR/dmg-root/Umowa-uzytkowania.rtf"
printf '%s\n' \
	'Uruchom instalator .pkg, aby zainstalować aplikację w /Applications.' \
	'Obraz wymaga zaakceptowania umowy przed zamontowaniem.' \
	> "$WORK_DIR/dmg-root/Przeczytaj-przed-instalacja.txt"

echo "Creating compressed DMG (this can take about a minute)..."
hdiutil create -quiet -srcfolder "$WORK_DIR/dmg-root" \
	-volname "Gratulacje Użytkowniku $VERSION" \
	-fs HFS+ -format UDZO -ov "$DMG_PATH"

EULA_DATA="$(openssl base64 -A -in "$WORK_DIR/dmg-root/Umowa-uzytkowania.rtf")"
export EULA_DATA
perl -0pe 's/\$\{EULA_DATA\}/$ENV{EULA_DATA}/g' \
	"$ROOT/support/dmg-eula-template.xml" > "$WORK_DIR/eula-resources.xml"
/usr/bin/plutil -lint "$WORK_DIR/eula-resources.xml"
echo "Embedding the pre-mount agreement..."
hdiutil udifrez -quiet -xml "$WORK_DIR/eula-resources.xml" '' "$DMG_PATH"
echo "Verifying the DMG..."
hdiutil verify "$DMG_PATH"

echo "Created:"
echo "  $APP_SOURCE"
echo "  $PKG_PATH"
echo "  $DMG_PATH"
