#!/usr/bin/env bash
set -e
cd "$(dirname "$0")"

echo "Merging main into prod..."
git checkout prod
git merge main -m "Merge main into prod"

echo "Deploying to Cloudflare Pages..."
npx wrangler pages deploy . --project-name=hupoeramadan26

echo "Pushing prod to GitHub..."
git push origin prod

git checkout main
echo "Done. Live at https://hupoeramadan26.pages.dev"
