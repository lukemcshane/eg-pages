#!/bin/sh

eg() {

local EG_PAGES_DIR=$HOME/eg/pages

if [ "$#" -eq 0 ]; then
	printf "%s\n" "What example page do you want?"
	return 1
fi

if [ ! -f "$EG_PAGES_DIR"/$1.md ]; then
	printf "%s\n" "No example entry for $1"
	return 1
fi

################################
### AWK SCRIPT
read -d '' scriptVariable << 'EOF'
BEGIN					{ term = "^" cmd }
$0 ~ term				{ flag = 1; next }
flag == 1 && $0 !~ /^$/ { print }
$0 ~ /^$/				{ flag = 0; next }
EOF
################################

	mytext="$(awk -v cmd=$1 "$scriptVariable" ~/.eg)"

	header="$(head -1 "$EG_PAGES_DIR"/$1.md)"
	body="$(tail -n +2 "$EG_PAGES_DIR"/$1.md)"
	printf '%s\n%s\n%s' $header $mytext $body |
		pandoc -s --variable title="$1" -t man $1.md |
		sed -e "s/\[C]/[B]/g; /\.IP/d" |
		man -l -
}

