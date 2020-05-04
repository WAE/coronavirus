#!/usr/bin/env sh
# Copyright 2020 (c)  all rights reserved by S D Rausty;  see LICENSE  
# https://sdrausty.github.io hosted courtesy https://pages.github.com
#####################################################################
set -eu
_CPREPO_() {
	[ -f "$1/.gitattributes" ] && cp "$1/.gitattributes" "$2/"
	[ -f "$1/.gitignore" ] && cp "$1/.gitignore" "$2/"
	cp -r "$1/*" "$2/"
	[ -d "$1/.conf/" ] && cp -r "$1/.conf/" "$2/"
	[ -d "$1/.github/" ] && cp -r "$1/.github/" "$2/"
	[ -d "$1/.scripts/" ] && cp -r "$1/.scripts/" "$2/"
}

_HELP_() {
	grep -w "\\#\\ \\#" "$1" | sed "s/\	\\#\\ \\#//g" 
	# #
	# # Run ` cp.repo.sh ` with two arguements as ` cp.repo.sh ` attempts to copy the contents of one git repository into another as follows:
	grep \$\2 "$1"
	printf \\n
}

[ ! -z "${1:-}" ] && [ ! -z "${2:-}" ] && _CPREPO_ || _HELP_ "$0" 
# cp.repo.sh EOF
