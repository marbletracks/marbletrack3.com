#!/bin/bash
# This is designed to make it easier to copy images from finder to b.robnugen.com

THISYEAR=$(date +'%Y')

ssh b.rn "mkdir -p b.robnugen.com/art/marble_track_3/workers/$THISYEAR/"

scp $@ b.rn:b.robnugen.com/art/marble_track_3/workers/$THISYEAR

echo creating thumbnails
ssh b.rn "scripts/create_thumbs.pl /home/thundergoblin/b.robnugen.com/art/marble_track_3/workers/$THISYEAR"
