#!/bin/bash
set -e

echo "The submodules are set to https so Netlify can grab them. If you want to push without passwords do this:"
echo "Rewriting submodule URLs to SSH so you can push. Remember to re-run this if you `git clone` fresh."

git config submodule.scripts/go.url git@github.com:marbletracks/go-get-video-durations.git
git config submodule.themes/castanet.url git@github.com:marbletracks/castanet.git

git submodule sync
