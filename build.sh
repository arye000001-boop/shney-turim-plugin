#!/usr/bin/env bash
# אורז את התוסף לקובץ .otzplugin (ארכיון zip) בתיקיית releases
set -euo pipefail
cd "$(dirname "$0")"
VERSION=$(python3 -c "import json;print(json.load(open(\"src/manifest.json\",encoding=\"utf-8-sig\"))[\"version\"])")
OUT="releases/shney-turim-v${VERSION}.otzplugin"
mkdir -p releases
rm -f "$OUT"
(cd src && zip -q -9 -X "../$OUT" index.html manifest.json fontkit.umd.min.js pdf-lib.min.js)
echo "נוצר: $OUT"
