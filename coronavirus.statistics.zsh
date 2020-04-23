#!/usr/bin/env zsh
# Copyright 2020 (c) all rights reserved by WAE;  see LICENSE  
# https://wae.github.io/coronavirus hosted courtesy https://pages.github.com
################################################################################
# # To install this script, copy and paste:
# # ```
# #    au git wget zsh || apt install git wget zsh #  installs git, wget and zsh with apt or au (https://wae.github.io/au/)
# # 
# #    mkdir -p ~/WAE/virus/coronavirus/ #  creates directories
# # 
# #    cd ~/WAE/virus/ #  changes working directory
# # 
# #    git clone https://github.com/WAE/coronavirus #  clones repository
# # 
# #    ~/WAE/virus/coronavirus.statistics.zsh #  lists country names
# # 
# #    ~/WAE/virus/coronavirus.statistics.zsh new-zealand uk #  lists statistics
# # 
# # ```
set -eu
RDR="$HOME/WAE/virus/coronavirus"
_TERM_() {
	[ -f "$RDR/index.html" ] && rm "$RDR/index.html"
	printf "\\n" 
	printf "%s\\n" "Related Internet Searches:"
	printf "%s\\n" "  * coronavirus meter"
	printf "%s\\n" "  * \"egg yolk\" virus"
	printf "%s\\n" "  * \"egg yolk\" virus site:.gov"
	printf "%s\\n" "  * hydration virus"
	printf "%s\\n" "  * hydration virus site:.gov"
	printf "\\n" 
	unset ARR
	exit
}
trap '_TERM_ $LINENO $?' ERR EXIT HUP INT TERM QUIT 

_HELP_() {
	grep -w "\\#\\ \\#" "$1" | sed "s/\\#\\ \\#\\ //g" 
}

_INSTALLCOMS_() {
	ISTRING=(git wget zsh)
	[ ! -z "$(command -v "au")" ] && (au $ISTRING) || (printf "\\e[1;38;5;117m%s\\e[0m\\n" "$STRING1") || [ ! -z "$(command -v apt)" ] && (apt install $ISTRING) || (printf "\\e[1;38;5;117m%s\\e[0m\\n" "$STRING2") 
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
	git clone https://github.com/WAE/coronavirus || printf "\\e[1;38;5;117m%s\\e[0m\\n" "$STRING3"
	cd "$RDR"
	printf "\\e[1;38;5;117m%s\\e[0m\\n" "$RDR setup:  DONE"
}

[ -d "$RDR" ] && cd "$RDR" || _INSTALL_
DATA="https://www.worldometers.info/coronavirus/"
DATE="$(date +%Y%m%d)"
[ ! -f "$RDR/www.worldometers.info/coronavirus/$DATE/index.html" ] && [ ! -d "$RDR/www.worldometers.info/coronavirus/$DATE/" ] && mkdir -p "$RDR/www.worldometers.info/coronavirus/$DATE" && cd "$RDR/www.worldometers.info/coronavirus/$DATE" && wget $DATA && cd "$RDR"
[ ! -f "$RDR/index.html" ] && ln -s "$RDR/www.worldometers.info/coronavirus/$DATE/index.html" 
# # `  echo china > .conf/COUNTRYSTAT ` to change default country output.
[ -f "$RDR/.conf/COUNTRYNAME" ] && COUNTRYNAME="$(cat $RDR/.conf/COUNTRYNAME)" || COUNTRYNAME="us"

_ARR_() {
	STATKEY=("Country" "Total Cases" "New Cases" "Total Deaths" "New Deaths" "Total Recovered" "Active Cases" "Serious, Critical" "Tot Cases/ 1M pop" "Deaths/ 1M pop" "Total Tests" "Tests/ 1M pop")
	INDEX="$(awk '{gsub("\"></td>", "\">0</td>", $0); print}' index.html)"
	COUNTRYSTAT=($(grep -iA 12 "ref=\"country/$COUNTRYNAME/" <<< "$INDEX" | grep -oP '(?<=">).*(?=</td)' | grep -v class | head -n 11 | sed 's/+//g' | sed 's/,//g' ))
	[ "${COUNTRYSTAT[5]}" = "N/A" ] && printf "\\n%s\\n\\n" "WARNING:  Statistics for $COUNTRYNAME:u $DATE are not available;  Continuing..." && _DARR_ || _CARR_
}

_CARR_() {
	printf "\\n%s\\n" "$COUNTRYNAME:u $DATE Coronavirus Pandemic Statistics:"
	DENOM="$((${COUNTRYSTAT[3]}+${COUNTRYSTAT[5]}))"
	printf "%0.4f%s\\n" "$(((${COUNTRYSTAT[3]}/$DENOM.)*100))" "% = $COUNTRYNAME:u $DATE OLD MORTALITY % RATE (0.0000% is ideal) = ( ${STATKEY[4]} ) / ( ${STATKEY[4]} + ${STATKEY[6]} )"
 	NUMER="$((${COUNTRYSTAT[3]}+${COUNTRYSTAT[4]}))"
 	DENOM="$((${COUNTRYSTAT[3]}+${COUNTRYSTAT[4]}+${COUNTRYSTAT[5]}))"
	printf "%0.4f%s\\n" "$((($NUMER/$DENOM.)*100))" "% = $COUNTRYNAME:u $DATE NEW MORTALITY % RATE (0.0000% is ideal) = ( ${STATKEY[5]} + ${STATKEY[4]} ) / ( ${STATKEY[5]} + ${STATKEY[4]} + ${STATKEY[6]} )"
	printf "%0.4f%s\\n" "$(((${COUNTRYSTAT[6]}/${COUNTRYSTAT[1]}.)*100))" "% = $COUNTRYNAME:u $DATE OLD SPREAD % RATE (0.0000% is ideal) = ( ${STATKEY[7]} ) / ( ${STATKEY[2]} )"
 	NUMER="$((${COUNTRYSTAT[2]}+${COUNTRYSTAT[6]}))"
 	DENOM="$((${COUNTRYSTAT[2]}+${COUNTRYSTAT[1]}))"
	printf "%0.4f%s\\n" "$((($NUMER/$DENOM.)*100))" "% = $COUNTRYNAME:u $DATE NEW SPREAD % RATE (0.0000% is ideal) = ( ${STATKEY[3]} + ${STATKEY[7]} ) / ( ${STATKEY[3]} + ${STATKEY[2]} )"
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

_COCO_() {
	ARR=($(grep "ref=\"country/" index.html | grep -oP '(?<=ref="country/).*(?=/")' | sort | uniq ))
	for NAMES in "$(printf "%s\\n" ${ARR[@]})"
	do 
		printf "%s\\n" "$NAMES"
	done
}

_CONCO_() {
	_COCO_
	printf "%s\\n" "${#ARR[@]}"
}

[ -z "${1:-}" ] && _CONCO_ && exit
[[ "${1//-}" = [Hh]* ]] && [ -z "${2:-}" ] && _HELP_ $0 && exit
_ARR_
[ ! -z "${1:-}" ] && [ ! -z "${2:-}" ] && COUNTRYNAME="$1" && _ARR_ && COUNTRYNAME="$2" && _ARR_ && exit 
# coronavirus.statistics.zsh EOF
