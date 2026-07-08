#!/usr/bin/env bash
# Cut a release in one command. Binds the three steps that used to be manual:
# bump VERSION + package.json + every openai.yaml, run validation, then tag.
#
# Usage: bash scripts/release.sh 0.5.0
set -euo pipefail

cd "$(dirname "$0")/.."

NEW="${1:-}"
if [ -z "$NEW" ]; then
  echo "Usage: bash scripts/release.sh <new-version>   (example: 0.5.0)"
  exit 2
fi
if ! echo "$NEW" | grep -qE '^[0-9]+\.[0-9]+\.[0-9]+$'; then
  echo "Version must be semver like 0.5.0, got '${NEW}'"
  exit 2
fi

OLD="$(tr -d ' \n\r\t' < VERSION)"
echo "Bumping ${OLD} -> ${NEW}"

# VERSION file
printf '%s\n' "$NEW" > VERSION

# package.json
sed -i.bak -E "s/(\"version\"[[:space:]]*:[[:space:]]*\")[^\"]+(\")/\1${NEW}\2/" package.json && rm -f package.json.bak

# every skill's openai.yaml
for y in skills/*/agents/openai.yaml; do
  if grep -qE '^version:' "$y"; then
    sed -i.bak -E "s/^version:.*/version: \"${NEW}\"/" "$y" && rm -f "$y.bak"
  else
    printf 'version: "%s"\n%s' "$NEW" "$(cat "$y")" > "$y"
  fi
done

echo "Running validation..."
bash scripts/validate.sh

echo
echo "Files bumped and validated. Remaining manual steps:"
echo "  1. Add a section for ${NEW} to CHANGELOG.md"
echo "  2. git add -A && git commit -m \"v${NEW}\""
echo "  3. git tag v${NEW} && git push && git push --tags"
