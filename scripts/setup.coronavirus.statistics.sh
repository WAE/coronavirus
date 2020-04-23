#!/usr/bin/env sh
# Copyright 2020 (c) all rights reserved by WAE;  see LICENSE  
# https://wae.github.io/coronavirus hosted courtesy https://pages.github.com
################################################################################
set -eu
RDR="$HOME/WAE/virus/coronavirus"
_TERM_() {
	[ -h "$RDR/index.html" ] && rm "$RDR/index.html"
	printf "\\n" 
	printf "%s\\n" "Related Internet Searches:"
	printf "%s\\n" "	coronavirus meter"
	printf "%s\\n" "	\"egg yolk\" parvovirus"
	printf "%s\\n" "	\"egg yolk\" virus"
	printf "%s\\n" "	\"egg yolk\" virus site:.edu"
	printf "%s\\n" "	\"egg yolk\" virus site:.gov"
	printf "%s\\n" "	hydration virus"
	printf "\\n" 
	exit
}
trap '_TERM_ $LINENO $?' 0 1 2 3 

_HELP_() {
	grep -h -e "^\\#\\ \\#" -e "^\\	\\#\\ \\#" "$1" | sed "s/^\\#\\ \\#\\ //g" | sed "s/^\\	\\#\\ \\#\\ //g"  
	# # To install coronavirus.statistics.sh, copy and paste:
	# # ```
	# #    au git wget zsh || apt install git wget zsh #  installs git, wget and zsh with apt or au (https://wae.github.io/au/)
	# # 
	# #    mkdir -p ~/WAE/virus/covid19/ #  creates directories
	# # 
	# #    cd ~/WAE/virus/ #  changes working directory
	# # 
	# #    git clone https://github.com/WAE/covid19 #  clones repository
	# # 
	# #    ~/WAE/virus/covid19.statistics.zsh #  lists country names
	# # 
	# #    ~/WAE/virus/covid19.statistics.zsh new-zealand uk #  lists statistics
	# # 
	# # ```
}

_INSTALLCOMS_() {
	ISTRING="git wget zsh"
	[ ! -z "$(command -v "au")" ] && (au "$ISTRING") || (printf "%s\\n" "$STRING1") || [ ! -z "$(command -v apt)" ] && (apt install "$ISTRING") || (printf "%s\\n" "$STRING2") 
	unset ISTRING
}

_INSTALL_() {
	printf "%s\\n" "Beginning $RDR setup:"
	STRING1="Command \` au \` enables rollback;  Available at this https://wae.github.io/au/ website:  Continuing..."
	STRING2="Cannot update $RDR prerequisites:  Continuing..."
	STRING3="Cannot clone $RDR:  Continuing..."
	[ ! -z "$(command -v "git")" ] || _INSTALLCOMS_
	[ ! -z "$(command -v "wget")" ] || _INSTALLCOMS_
	[ ! -z "$(command -v "zsh")" ] || _INSTALLCOMS_
	mkdir -p "$RDR" # creates directories
	cd "$HOME/WAE/virus/" # change working directory
	git clone "$SIAD" || printf "%s\\n" "$STRING3"
	cd "$RDR"
	printf "%s\\n" "$RDR setup:  DONE"
}

SIAD="https://github.com/WAE/coronavirus"
[ -d "$RDR" ] && cd "$RDR" || _INSTALL_
~/WAE/virus/coronavirus/coronavirus.statistics.zsh
# setup.coronavirus.statistics.sh EOF
