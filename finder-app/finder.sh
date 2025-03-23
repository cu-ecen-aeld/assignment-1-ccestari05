#!/bin/bash
if [ $# -ne 2 ]; then
    echo "The script must be executed with paramters. Eg: finder.sh <filesdir> <searchstr>"
    exit 1
fi

filesdir=$1
searchstr=$2

if [ -d "$filesdir" ]; then
    numfiles=$(find "$filesdir" -type f | wc -l)
    nummatchinglines=$(grep -r "$searchstr" "$filesdir" | wc -l)
    echo "The number of files are $numfiles and the number of matching lines are $nummatchinglines"
else
    echo "The provided directory does not exist: '$filesdir'"    
    exit 1
fi
