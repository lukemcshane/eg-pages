#!/bin/bash

eg() {

local EG_PAGES_DIR=$HOME/eg/pages
local EG_PAGES_CUSTOM_DIR=$HOME/.eg

if [ "$#" -eq 0 ]; then
	printf "%s\n" "What example page do you want?"
	exit 1
fi

if [ ! -f "$EG_PAGES_DIR"/$1.md ]; then
	PS3='Where would you like to start one?'
	select opt in "Github directory" "Local notes directory" "Quit";
	do
	    case "$REPLY" in

	        1 ) $EDITOR "$EG_PAGES_DIR"/$1.md ;;
		    2 ) $EDITOR "$EG_PAGES_CUSTOM_DIR"/$1.md ;;
			3 ) return 1 ;;

	        *) echo "Invalid option. Try again"; continue ;;
		esac
	done
fi


mytext="$EG_PAGES_CUSTOM_DIR"/$1.md

body="$EG_PAGES_DIR"/$1.md

for f in /dev/null $mytext $body ; do cat "${f}"; echo; done |
	pandoc -s --variable title="$1" -t man - |
	# Use sed to replace [code] with [bold] and remove paragraph indents.
	sed -e "s/\[C]/[B]/g; /\.IP/d" |  
	man -l -

}

