#!/bin/sh

eg() {

if [ "$#" -eq 0 ]; then
	printf "%s\n" "What example page do you want?"
	return 1
fi

if [ ! -f ~/eg/$1.1 ]; then
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

	header="$(head -1 ~/eg/$1.1)"
	body="$(tail -n +2 ~/eg/$1.1)"
	printf '%s\n%s\n%s' $header $mytext $body | man -l -
}

