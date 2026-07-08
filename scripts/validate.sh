#!/usr/bin/env bash
# Validate the estack skill package before publish.
# Checks version consistency, SKILL.md frontmatter, knowledge-base link
# integrity, and original-source naming. Exits non-zero on the first class
# of failures so CI turns red.
set -u

cd "$(dirname "$0")/.." || exit 2

fail=0
note() { printf '  FAIL  %s\n' "$1"; fail=$((fail + 1)); }
ok()   { printf '  ok    %s\n' "$1"; }

# 1. VERSION file
if [ ! -s VERSION ]; then
  echo "VERSION file missing or empty"
  exit 2
fi
VER="$(tr -d ' \n\r\t' < VERSION)"
echo "Declared version ${VER}"

# 2. package.json version matches VERSION
echo "[1] package.json version"
PKG_VER="$(grep -E '"version"' package.json | head -1 | sed -E 's/.*"version"[^"]*"([^"]+)".*/\1/')"
if [ "$PKG_VER" = "$VER" ]; then ok "package.json ${PKG_VER}"; else note "package.json version ${PKG_VER} does not match VERSION ${VER}"; fi

# 3. Each skill: frontmatter name + description, name matches directory
echo "[2] SKILL.md frontmatter"
for dir in skills/*/; do
  name="$(basename "$dir")"
  skill="${dir}SKILL.md"
  [ -f "$skill" ] || { note "${skill} missing"; continue; }
  fm="$(awk 'NR==1&&/^---/{f=1;next} /^---/{if(f)exit} f{print}' "$skill")"
  echo "$fm" | grep -qE '^name:' || note "${skill} frontmatter has no name"
  echo "$fm" | grep -qE '^description:' || note "${skill} frontmatter has no description"
  fmname="$(echo "$fm" | grep -E '^name:' | head -1 | sed -E 's/name:[[:space:]]*//' | tr -d '"'"'"' ')"
  if [ "$fmname" = "$name" ]; then ok "${name} name matches folder"; else note "${skill} name '${fmname}' does not match folder '${name}'"; fi
done

# 4. Each openai.yaml carries version equal to VERSION
echo "[3] openai.yaml version"
for y in skills/*/agents/openai.yaml; do
  yver="$(grep -E '^version:' "$y" | head -1 | sed -E 's/version:[[:space:]]*//' | tr -d '"'"'"' ')"
  if [ "$yver" = "$VER" ]; then ok "$(dirname "$(dirname "$y")" | xargs basename) ${yver}"; else note "${y} version '${yver}' does not match VERSION ${VER}"; fi
done

# 5. Every knowledge-base path referenced from skills/ resolves
echo "[4] knowledge-base link integrity"
refs="$(grep -rhoE 'knowledge-base/[A-Za-z0-9/_.-]+\.md' skills/ 2>/dev/null | sort -u)"
if [ -z "$refs" ]; then ok "no knowledge-base references found"; fi
for p in $refs; do
  if [ -f "$p" ]; then ok "$p"; else note "referenced but missing: $p"; fi
done

# 6. Original source cards start with an ISO date prefix
echo "[5] original-source naming"
src_dir="knowledge-base/archive/original-sources"
if [ -d "$src_dir" ]; then
  for f in "$src_dir"/*.md; do
    b="$(basename "$f")"
    [ "$b" = "_README.md" ] && continue
    if echo "$b" | grep -qE '^[0-9]{4}-[0-9]{2}-[0-9]{2}_'; then ok "$b"; else note "source file does not start with YYYY-MM-DD_ : $b"; fi
  done
fi

echo
if [ "$fail" -eq 0 ]; then
  echo "PASS: all checks green (version ${VER})"
  exit 0
else
  echo "FAIL: ${fail} problem(s) found"
  exit 1
fi
