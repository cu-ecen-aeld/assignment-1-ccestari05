#!/bin/bash
if [ $# -ne 2 ]; then
    echo "The script must be executed with paramters. Eg: writer.sh <writefile> <writestr>"
    exit 1
fi

writefile="$1"
writestr="$2"

filedir=$(dirname "$writefile")
mkdir -p "$filedir"
if [ $? -gt 0 ]; then
    echo "The directory could not be created: '$filedir'"
    exit 1
fi

echo "$writestr" > "$writefile"
if [ $? -gt 0 ]; then
    echo "The file could not be written: '$writefile'"
    exit 1
fi
