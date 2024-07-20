#!/bin/zsh

git pull cloudflared master --rebase --tags
tag=$(curl -s "https://api.github.com/repos/cloudflare/cloudflared/tags" | jq -r '.[0].name')

git tag -d "${tag}"
git tag "${tag}" -m "cloudflared ${tag}"
