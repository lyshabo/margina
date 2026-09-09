#!/usr/bin/env bash
set -u
tar -czf vercel-diagnose.tgz -C public-preview .
echo "--- HTTP response ---"
curl -sS -D - -X POST "https://codex-deploy-skills.vercel.sh/api/deploy" \
  -F "file=@vercel-diagnose.tgz" \
  -F "framework=null" || true
rm -f vercel-diagnose.tgz
