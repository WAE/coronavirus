#!/usr/bin/env zsh
# Copyright 2020 (c)  all rights reserved by S D Rausty;  see LICENSE  
# https://sdrausty.github.io hosted courtesy https://pages.github.com
#####################################################################
set -eu
RDR="$HOME/WAE/virus/coronavirus"
[ -d "$RDR" ] && cd "$RDR" || (printf "\\n%s\\n\\n" "Install ${0##*/} coronavirus.statistics.zsh in $RDR:
# # To install this script, copy and paste:
# # ```
# #    au git wget zsh || apt install git wget zsh # installs git, wget and zsh with au (https://wae.github.io/au/) or apt
# # 
# #    mkdir -p ~/WAE/virus/coronavirus/ # creates directories
# # 
# #    cd ~/WAE/virus/ # changes working directory
# # 
# #    git clone https://github.com/WAE/coronavirus # clones repository
# # 
# #    cd ~/WAE/virus/coronavirus # changes working directory
# # 
# #    zsh coronavirus.statistics.zsh # lists country names
# # 
# #    zsh coronavirus.statistics.zsh new-zealand uk # lists statistics
# # 
# # ```
$(grep -w "\\#\\ \\#" "$0")
Exiting..." && exit 56)
. "$RDR/scripts/countries.coronavirus.bash"
DATA="https://www.worldometers.info/coronavirus/"
DATE="$(date +%Y%m%d)"
[ ! -f "$RDR/www.worldometers.info/coronavirus/$DATE/index.html" ] && [ ! -d "$RDR/www.worldometers.info/coronavirus/$DATE/" ] && mkdir -p "$RDR/www.worldometers.info/coronavirus/$DATE" && cd "$RDR/www.worldometers.info/coronavirus/$DATE" && wget $DATA && cd "$RDR"
[ ! -f "$RDR/index.html" ] && ln -s "$RDR/www.worldometers.info/coronavirus/$DATE/index.html" 
# # ` echo china > .conf/COUNTRYSTAT ` to set default country
[ -f "$RDR/.conf/COUNTRYSTAT" ] && COUNTRYSTAT="$(cat $RDR/.conf/COUNTRYSTAT)" || COUNTRYSTAT="us"
_ARR_() {
	STATKEY=("Country, Other" "Total Cases" "New Cases" "Total Deaths" "New Deaths" "Total Recovered" "Active Cases" "Serious, Critical" "Tot Cases/ 1M pop" "Deaths/ 1M pop" "Total Tests" "Tests/ 1M pop")
	INDEX="$(awk '{gsub("\"></td>", "\">0</td>", $0); print}' index.html)"
	COUNTRYSTAT=($(grep -A 12 "ref=\"country/$COUNTRYSTAT/" <<< "$INDEX" | grep -oP '(?<=">).*(?=</td)' | grep -v class | head -n 11 | sed 's/+//g' | sed 's/,//g' ))
	DENOM="$((${COUNTRYSTAT[3]}+${COUNTRYSTAT[5]}))"
	printf "%0.4f%s\\n" "$(((${COUNTRYSTAT[3]}/$DENOM.)*100))" "% = ( ${STATKEY[4]} ) / ( ${STATKEY[4]} + ${STATKEY[6]} )"
 	NUMER="$((${COUNTRYSTAT[3]}+${COUNTRYSTAT[4]}))"
 	DENOM="$((${COUNTRYSTAT[3]}+${COUNTRYSTAT[4]}+${COUNTRYSTAT[5]}))"
	printf "%0.4f%s\\n" "$((($NUMER/$DENOM.)*100))" "% = ( ${STATKEY[5]} + ${STATKEY[4]} ) / ( ${STATKEY[5]} + ${STATKEY[4]} + ${STATKEY[6]} )"
	printf "%0.4f%s\\n" "$(((${COUNTRYSTAT[6]}/${COUNTRYSTAT[1]}.)*100))" "% = ( ${STATKEY[7]} ) / ( ${STATKEY[2]} )"
 	NUMER="$((${COUNTRYSTAT[2]}+${COUNTRYSTAT[6]}))"
 	DENOM="$((${COUNTRYSTAT[2]}+${COUNTRYSTAT[1]}))"
	printf "%0.4f%s\\n" "$((($NUMER/$DENOM.)*100))" "% = ( ${STATKEY[3]} + ${STATKEY[7]} ) / ( ${STATKEY[3]} + ${STATKEY[2]} )"
	printf "%s\\n" "Based upon this published data: "
	printf "%s	%7s\\n" "${STATKEY[2]}" "${COUNTRYSTAT[1]}"
	printf "%s	%7s\\n" "${STATKEY[3]}" "${COUNTRYSTAT[2]}"
	printf "%s	%7s\\n" "${STATKEY[4]}" "${COUNTRYSTAT[3]}"
	printf "%s	%7s\\n" "${STATKEY[5]}" "${COUNTRYSTAT[4]}"
	printf "%s	%7s\\n" "${STATKEY[6]}" "${COUNTRYSTAT[5]}"
	printf "%s	%7s\\n" "${STATKEY[7]}" "${COUNTRYSTAT[6]}"
	printf "%s\\n" "Coronavirus data retrieved from $DATA on $DATE."
}
printf "\\n%s\\n" "Statistics for $COUNTRYSTAT:u $DATE"
_ARR_
[ -z "${1:-}" ] && _COCO_ && exit 59 
[ ! -z "${1:-}" ] && [ ! -z "${2:-}" ] && printf "\\n%s\\n" "Statistics for $1:u $DATE" && COUNTRYSTAT="$1" && _ARR_ && printf "\\n%s\\n" "Statistics for $2:u $DATE" && COUNTRYSTAT="$2" && _ARR_ 
[[ "${1//-}" = [Hh]* ]] && [ -z "${2:-}" ] && grep -w "\\#\\ \\#" "$0" | sed "s/\\#\\ \\#//g" 
[ -f "$RDR/index.html" ] && rm "$RDR/index.html"
printf "\\n" 
printf "%s\\n" "Recommended Internet searches:"
printf "%s\\n" "  * coronavirus meter"
printf "%s\\n" "  * \"egg yolk\" virus"
printf "%s\\n" "  * \"egg yolk\" virus site:.gov"
printf "%s\\n" "  * hydration virus"
printf "%s\\n" "  * hydration virus site:.gov"
printf "\\n" 
unset ARR
# coronavirus.statistics.zsh EOF
