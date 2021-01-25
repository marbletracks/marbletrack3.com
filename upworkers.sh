#!/bin/bash
# This is designed to make it easier to copy images from finder to b.robnugen.com

THISYEAR=$(date +'%Y')

scp $@ b.rn:mt3/workers/$THISYEAR
