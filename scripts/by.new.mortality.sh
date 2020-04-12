#!/usr/bin/env sh
# Copyright 2020 (c)  all rights reserved by S D Rausty;  see LICENSE  
# https://sdrausty.github.io hosted courtesy https://pages.github.com
#####################################################################
set -eu
RDR="$HOME/WAE/virus/coronavirus"
DATE="$(date +%Y%m%d)"
[ -d "$RDR/output" ] && mkdir -p "$RDR/output" 
"$RDR/scripts/countries.sh" | grep "NEW MORTALITY" | sort -g | uniq | awk '{gsub(/NEW MORTALITY.*/,"")}1' > "$RDR/output/by.new.mortality.$DATE.md" 
# by.new.mortality.sh EOF
