#!/usr/bin/env zsh
# Copyright 2020 (c) all rights reserved by WAE;  see LICENSE  
# https://wae.github.io/coronavirus hosted courtesy https://pages.github.com
################################################################################
set -eu
RDR="$HOME/WAE/virus/coronavirus"
_TERM_() {
	printf "\\n" 
	printf "%s\\n" "Related Internet Searches:"
	printf "%s\\n" "	coronavirus meter"
	printf "%s\\n" "	\"egg yolk\" parvovirus"
	printf "%s\\n" "	\"egg yolk\" virus"
	printf "%s\\n" "	\"egg yolk\" virus site:.edu"
	printf "%s\\n" "	\"egg yolk\" virus site:.gov"
	printf "%s\\n" "	hydration virus"
	printf "\\n" 
	unset ARR INDEX
	exit
}
trap '_TERM_ $LINENO $?' ERR EXIT HUP INT TERM QUIT 

_HELP_() {
	grep -h -e "^\\#\\ \\#" -e "^\\	\\#\\ \\#" "$1" | sed "s/^\\#\\ \\#\\ //g" | sed "s/^\\	\\#\\ \\#\\ //g"  
	# # To install this script, copy and paste:
	# # ```
	# #    au git wget zsh || apt install git wget zsh	#  install git, wget and zsh with au (https://wae.github.io/au/) and apt (https://salsa.debian.org/apt-team/apt)
	# # 
	# #    mkdir -p ~/WAE/virus/coronavirus/	#  create directories
	# # 
	# #    cd ~/WAE/virus/				#  change working directory
	# # 
	# #    git clone https://github.com/WAE/coronavirus	#  clone git repository
	# # 
	# # ```
	# # 
	# #    ~/WAE/virus/coronavirus.statistics.zsh		#  list countries
	# # 
	# #    ~/WAE/virus/coronavirus.statistics.zsh new-zealand uk	#  list statistics
	# # 
}

_INSTALLCOMS_() {
	IARR=(git wget zsh)
	[ ! -z "$(command -v "au")" ] && (au "$IARR") || (printf "\\e[1;38;5;117m%s\\e[0m\\n" "$STRING1") || [ ! -z "$(command -v apt)" ] && (apt install "$IARR") || (printf "\\e[1;38;5;117m%s\\e[0m\\n" "$STRING2") 
	unset IARR
}

_INSTALL_() {
	printf "\\e[1;38;5;117m%s\\e[0m\\n" "Beginning $RDR setup:"
	STRING1="Command \` au \` enables rollback;  Available at this https://wae.github.io/au/ website:  Continuing..."
	STRING2="Cannot update $RDR prerequisites:  Continuing..."
	STRING3="Cannot clone $RDR:  Continuing..."
	[ ! -z "$(command -v "git")" ] || _INSTALLCOMS_
	[ ! -z "$(command -v "wget")" ] || _INSTALLCOMS_
	[ ! -z "$(command -v "zsh")" ] || _INSTALLCOMS_
	mkdir -p "$RDR" # creates directories
	cd "$HOME/WAE/virus/" # change working directory
	git clone "$SIAD" || printf "\\e[1;38;5;117m%s\\e[0m\\n" "$STRING3"
	cd "$RDR"
	printf "\\e[1;38;5;117m%s\\e[0m\\n" "$RDR setup:  DONE"
}

DATE="$(date +%Y%m%d)"
DATA="https://www.worldometers.info/coronavirus/"
DATADIR="$RDR/www.worldometers.info/coronavirus/$DATE"
SIAD="https://github.com/WAE/coronavirus"
[ -d "$RDR" ] && cd "$RDR" || _INSTALL_
[ ! -f "$DATADIR/index.html" ] && [ ! -d "$DATADIR" ] && mkdir -p "$DATADIR" && cd "$DATADIR" && wget "$DATA" && cd "$RDR"
[ ! -f "$DATADIR/index.html" ] && cd "$DATADIR" && wget "$DATA" && cd "$RDR"
# #    echo china > ~/WAE/virus/.conf/COUNTRYSTAT	#  change default country
[ -f "$RDR/.conf/COUNTRYNAME" ] && COUNTRYNAME="$(cat "$RDR/.conf/COUNTRYNAME")" || COUNTRYNAME="us"

_ARR_() {
	STATKEY=("Country" "Total Cases" "New Cases" "Total Deaths" "New Deaths" "Total Recovered" "Active Cases" "Serious, Critical" "Tot Cases/ 1M pop" "Deaths/ 1M pop" "Total Tests" "Tests/ 1M pop")
	INDEX="$(awk '{gsub("\"></td>", "\">0</td>", $0); print}' $DATADIR/index.html)"
	COUNTRYSTAT=($(grep -iA 12 "ref=\"country/$COUNTRYNAME/" <<< "$INDEX" | grep -oP '(?<=">).*(?=</td)' | grep -v class | head -n 11 | sed 's/+//g' | sed 's/,//g' ))
	[ "${COUNTRYSTAT[5]}" = "N/A" ] && printf "\\n%s\\n\\n" "WARNING:  Statistics for $COUNTRYNAME:u $DATE are not available;  Continuing..." && _DARR_ || _CARR_
}

_CARR_() {
	printf "\\n%s\\n" "$COUNTRYNAME:u $DATE Coronavirus Pandemic Statistics:"
	DENOM="$((${COUNTRYSTAT[3]}+${COUNTRYSTAT[5]}))"
	printf "%0.4f%s\\n" "$(((${COUNTRYSTAT[3]}/$DENOM.)*100))" "% = $COUNTRYNAME:u $DATE OLD MORTALITY % RATE (0.0000% is ideal) = ( ${STATKEY[4]} ) / ( ${STATKEY[4]} + ${STATKEY[6]} )"
 	CONTIN="$((${COUNTRYSTAT[3]}+${COUNTRYSTAT[4]}))"
 	DENOM="$((${COUNTRYSTAT[3]}+${COUNTRYSTAT[4]}+${COUNTRYSTAT[5]}))"
	printf "%0.4f%s\\n" "$((($CONTIN/$DENOM.)*100))" "% = $COUNTRYNAME:u $DATE NEW MORTALITY % RATE (0.0000% is ideal) = ( ${STATKEY[5]} + ${STATKEY[4]} ) / ( ${STATKEY[5]} + ${STATKEY[4]} + ${STATKEY[6]} )"
	printf "%0.4f%s\\n" "$(((${COUNTRYSTAT[6]}/${COUNTRYSTAT[1]}.)*100))" "% = $COUNTRYNAME:u $DATE OLD SPREAD % RATE (0.0000% is ideal) = ( ${STATKEY[7]} ) / ( ${STATKEY[2]} )"
 	CONTIN="$((${COUNTRYSTAT[2]}+${COUNTRYSTAT[6]}))"
 	DENOM="$((${COUNTRYSTAT[2]}+${COUNTRYSTAT[1]}))"
	printf "%0.4f%s\\n" "$((($CONTIN/$DENOM.)*100))" "% = $COUNTRYNAME:u $DATE NEW SPREAD % RATE (0.0000% is ideal) = ( ${STATKEY[3]} + ${STATKEY[7]} ) / ( ${STATKEY[3]} + ${STATKEY[2]} )"
	_DARR_
}

_DARR_() {
	printf "%s\\n" "Based upon this published data: "
	printf "%s	%7s\\n" "${STATKEY[2]}" "${COUNTRYSTAT[1]}"
	printf "%s	%7s\\n" "${STATKEY[3]}" "${COUNTRYSTAT[2]}"
	printf "%s	%7s\\n" "${STATKEY[4]}" "${COUNTRYSTAT[3]}"
	printf "%s	%7s\\n" "${STATKEY[5]}" "${COUNTRYSTAT[4]}"
	printf "%s	%7s\\n" "${STATKEY[6]}" "${COUNTRYSTAT[5]}"
	printf "%s	%7s\\n" "${STATKEY[7]}" "${COUNTRYSTAT[6]}"
	printf "%s\\n" "Coronavirus data retrieved from $DATA on $DATE."
}

_CONCO_() {
	ARR=($(grep "ref=\"country/" "$DATADIR/index.html" | grep -oP '(?<=ref="country/).*(?=/")' | sort | uniq ))
	for NAMES in "$(printf "%s\\n" "${ARR[@]}")"
	do 
		printf "%s\\n" "$NAMES"
	done
	printf "\\n%s\\n" "Worldwide ${#ARR[@]} countries have registered coronavirus virus pandemic cases as of $(date +%A\,\ %B\ %d\ %Y)."
}

[ -z "${1:-}" ] && _CONCO_ && exit
[[ "${1//-}" = [Hh]* ]] && [ -z "${2:-}" ] && _HELP_ "$0" && exit
_ARR_
[ -n "${1:-}" ] && [ -n "${2:-}" ] && COUNTRYNAME="$1" && _ARR_ && COUNTRYNAME="$2" && _ARR_
# coronavirus.statistics.zsh EOF
