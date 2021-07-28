#!/bin/bash
# This is designed to make it easier to copy images from finder to b.robnugen.com

THISYEAR=$(date +'%Y')

scp $@ b.rn:mt3/frames/$THISYEAR

echo creating thumbnails
ssh b.rn "scripts/create_thumbs.pl /home/thundergoblin/b.robnugen.com/art/marble_track_3/frames/$THISYEAR"
