#!/bin/bash

# Run from the project root no matter where it's checked out
# (e.g. ~/mt3.com on Lemur 10, ~/work/rob/marbletrack3.com on Lemur 13).
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

cd "$SCRIPT_DIR/scripts/go"

go run call_you.go my_uploads.go oauth2.go errors.go

cd "$SCRIPT_DIR"

hugo

#  This worked on Dreamhost, but not needed with Netlify (hooked into Github push)
# rsync -qavz --delete "$SCRIPT_DIR/public/" mt3:marbletrack3.com
