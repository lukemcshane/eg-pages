#!/bin/sh

eg() {

local EG_PAGES_DIR=$HOME/eg/pages
local EG_PAGES_CUSTOM_DIR=$HOME/.eg

if [ "$#" -eq 0 ]; then
	printf "%s\n" "What example page do you want?"
	return 1
fi

if [ ! -f "$EG_PAGES_DIR"/$1.md ]; then
	printf "%s\n" "No example entry for $1"
	return 1
fi

mytext="$EG_PAGES_CUSTOM_DIR"/$1.md

body="$EG_PAGES_DIR"/$1.md

for f in /dev/null $mytext $body ; do cat "${f}"; echo; done |
	pandoc -s --variable title="$1" -t man - |
	# Use sed to replace [code] with [bold] and remove paragraph indents.
	sed -e "s/\[C]/[B]/g; /\.IP/d" |  
	man -l -

}

