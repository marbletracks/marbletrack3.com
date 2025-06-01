#!/bin/bash
set -e

echo "Rewriting submodule URLs to use HTTPS for Netlify...  Otherwise it fails to clone them via ssh (since 2025)"

# Convert submodule URLs to HTTPS
git config submodule.scripts/go.url https://github.com/marbletracks/go-get-video-durations.git
git config submodule.themes/castanet.url https://github.com/marbletracks/castanet.git

# Sync and update submodules
git submodule sync
git submodule update --init --recursive
