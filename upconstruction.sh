#!/bin/bash
# This is designed to make it easier to copy images from finder to b.robnugen.com

UPTODIR="mt3/construction/2020"

# $@ gives all the command line arguments
scp $@ b.rn:$UPTODIR


