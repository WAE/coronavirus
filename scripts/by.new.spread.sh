#!/usr/bin/env sh
# Copyright 2020 (c)  all rights reserved by S D Rausty;  see LICENSE  
# https://sdrausty.github.io hosted courtesy https://pages.github.com
#####################################################################
set -eu
RDR="$HOME/WAE/virus/coronavirus"
DATE="$(date +%Y%m%d)"
[ ! -d "$RDR/output" ] && mkdir -p "$RDR/output" 
"$RDR/scripts/countries.zsh" | grep "NEW SPREAD" | sort -g | uniq | awk '{gsub(/NEW SPREAD.*/,"")}1' > "$RDR/output/by.new.spread.$DATE.md" 
# by.new.spread.sh EOF
