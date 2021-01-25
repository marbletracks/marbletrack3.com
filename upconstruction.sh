#!/bin/bash
# This is designed to make it easier to copy images from finder to b.robnugen.com

THISYEAR=$(date +'%Y')

UPTODIR="mt3/construction/$THISYEAR"

# $@ gives all the command line arguments
scp $@ b.rn:$UPTODIR


