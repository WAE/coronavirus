#!/usr/bin/env sh
# Copyright 2020 (c)  all rights reserved by S D Rausty;  see LICENSE  
# https://sdrausty.github.io hosted courtesy https://pages.github.com
#####################################################################
RDR="$HOME/WAE/virus/coronavirus"
set -eu
[ -d "$RDR" ] && cd "$RDR" || (printf "\\n%s\\n\\n" "Install ${0##*/} coronavirus.statistics.zsh in $RDR:
# # ```
# #    au git wget zsh || apt install git wget zsh # installs git, wget and zsh
# # 
# #    mkdir -p ~/WAE/virus/coronavirus/ # creates directories
# # 
# #    cd ~/WAE/virus/
# # 
# #    git clone https://github.com/WAE/coronavirus # clones repository
# # 
# #    cd ~/WAE/virus/coronavirus
# # 
# #    bash scripts/countries.coronavirus.bash # lists country names
# # 
# #    zsh coronavirus.statistics.zsh [country country] # lists statistics
# # 
# # ```
$(grep -w "\\#\\ \\#" "$0")
Exiting..." && exit 56)
"$RDR"/coronavirus.statistics.zsh afghanistan albania
"$RDR"/coronavirus.statistics.zsh algeria andorra
"$RDR"/coronavirus.statistics.zsh angola anguilla
"$RDR"/coronavirus.statistics.zsh antigua-and-barbuda argentina
"$RDR"/coronavirus.statistics.zsh armenia aruba
"$RDR"/coronavirus.statistics.zsh australia austria
"$RDR"/coronavirus.statistics.zsh azerbaijan bahamas
"$RDR"/coronavirus.statistics.zsh bahrain bangladesh
"$RDR"/coronavirus.statistics.zsh barbados belarus
"$RDR"/coronavirus.statistics.zsh belgium belize
"$RDR"/coronavirus.statistics.zsh benin bermuda
"$RDR"/coronavirus.statistics.zsh bhutan bolivia
"$RDR"/coronavirus.statistics.zsh bosnia-and-herzegovina botswana
"$RDR"/coronavirus.statistics.zsh brazil british-virgin-islands
"$RDR"/coronavirus.statistics.zsh brunei-darussalam bulgaria
"$RDR"/coronavirus.statistics.zsh burkina-faso burundi
"$RDR"/coronavirus.statistics.zsh cabo-verde cambodia
"$RDR"/coronavirus.statistics.zsh cameroon canada
"$RDR"/coronavirus.statistics.zsh caribbean-netherlands cayman-islands
"$RDR"/coronavirus.statistics.zsh central-african-republic chad
"$RDR"/coronavirus.statistics.zsh channel-islands chile
"$RDR"/coronavirus.statistics.zsh china china-hong-kong-sar
"$RDR"/coronavirus.statistics.zsh china-macao-sar colombia
"$RDR"/coronavirus.statistics.zsh congo costa-rica
"$RDR"/coronavirus.statistics.zsh cote-d-ivoire croatia
"$RDR"/coronavirus.statistics.zsh cuba curacao
"$RDR"/coronavirus.statistics.zsh cyprus czech-republic
"$RDR"/coronavirus.statistics.zsh democratic-republic-of-the-congo denmark
"$RDR"/coronavirus.statistics.zsh djibouti dominica
"$RDR"/coronavirus.statistics.zsh dominican-republic ecuador
"$RDR"/coronavirus.statistics.zsh egypt el-salvador
"$RDR"/coronavirus.statistics.zsh equatorial-guinea eritrea
"$RDR"/coronavirus.statistics.zsh estonia ethiopia
"$RDR"/coronavirus.statistics.zsh faeroe-islands falkland-islands-malvinas
"$RDR"/coronavirus.statistics.zsh fiji finland
"$RDR"/coronavirus.statistics.zsh france french-guiana
"$RDR"/coronavirus.statistics.zsh french-polynesia gabon
"$RDR"/coronavirus.statistics.zsh gambia georgia
"$RDR"/coronavirus.statistics.zsh germany ghana
"$RDR"/coronavirus.statistics.zsh gibraltar greece
"$RDR"/coronavirus.statistics.zsh greenland grenada
"$RDR"/coronavirus.statistics.zsh guadeloupe guatemala
"$RDR"/coronavirus.statistics.zsh guinea guinea-bissau
"$RDR"/coronavirus.statistics.zsh guyana haiti
"$RDR"/coronavirus.statistics.zsh holy-see honduras
"$RDR"/coronavirus.statistics.zsh hungary iceland
"$RDR"/coronavirus.statistics.zsh india indonesia
"$RDR"/coronavirus.statistics.zsh iran iraq
"$RDR"/coronavirus.statistics.zsh ireland isle-of-man
"$RDR"/coronavirus.statistics.zsh israel italy
"$RDR"/coronavirus.statistics.zsh jamaica japan
"$RDR"/coronavirus.statistics.zsh jordan kazakhstan
"$RDR"/coronavirus.statistics.zsh kenya kuwait
"$RDR"/coronavirus.statistics.zsh kyrgyzstan laos
"$RDR"/coronavirus.statistics.zsh latvia lebanon
"$RDR"/coronavirus.statistics.zsh liberia libya
"$RDR"/coronavirus.statistics.zsh liechtenstein lithuania
"$RDR"/coronavirus.statistics.zsh luxembourg macedonia
"$RDR"/coronavirus.statistics.zsh madagascar malawi
"$RDR"/coronavirus.statistics.zsh malaysia maldives
"$RDR"/coronavirus.statistics.zsh mali malta
"$RDR"/coronavirus.statistics.zsh martinique mauritania
"$RDR"/coronavirus.statistics.zsh mauritius mayotte
"$RDR"/coronavirus.statistics.zsh mexico moldova
"$RDR"/coronavirus.statistics.zsh monaco mongolia
"$RDR"/coronavirus.statistics.zsh montenegro montserrat
"$RDR"/coronavirus.statistics.zsh morocco mozambique
"$RDR"/coronavirus.statistics.zsh myanmar namibia
"$RDR"/coronavirus.statistics.zsh nepal netherlands
"$RDR"/coronavirus.statistics.zsh new-caledonia new-zealand
"$RDR"/coronavirus.statistics.zsh nicaragua niger
"$RDR"/coronavirus.statistics.zsh nigeria norway
"$RDR"/coronavirus.statistics.zsh oman pakistan
"$RDR"/coronavirus.statistics.zsh panama papua-new-guinea
"$RDR"/coronavirus.statistics.zsh paraguay peru
"$RDR"/coronavirus.statistics.zsh philippines poland
"$RDR"/coronavirus.statistics.zsh portugal qatar
"$RDR"/coronavirus.statistics.zsh reunion romania
"$RDR"/coronavirus.statistics.zsh russia rwanda
"$RDR"/coronavirus.statistics.zsh saint-barthelemy saint-kitts-and-nevis
"$RDR"/coronavirus.statistics.zsh saint-lucia saint-martin
"$RDR"/coronavirus.statistics.zsh saint-pierre-and-miquelon saint-vincent-and-the-grenadines
"$RDR"/coronavirus.statistics.zsh san-marino sao-tome-and-principe
"$RDR"/coronavirus.statistics.zsh saudi-arabia senegal
"$RDR"/coronavirus.statistics.zsh serbia seychelles
"$RDR"/coronavirus.statistics.zsh sierra-leone singapore
"$RDR"/coronavirus.statistics.zsh sint-maarten slovakia
"$RDR"/coronavirus.statistics.zsh slovenia somalia
"$RDR"/coronavirus.statistics.zsh south-africa south-korea
"$RDR"/coronavirus.statistics.zsh south-sudan spain
"$RDR"/coronavirus.statistics.zsh sri-lanka state-of-palestine
"$RDR"/coronavirus.statistics.zsh sudan suriname
"$RDR"/coronavirus.statistics.zsh swaziland sweden
"$RDR"/coronavirus.statistics.zsh switzerland syria
"$RDR"/coronavirus.statistics.zsh taiwan tanzania
"$RDR"/coronavirus.statistics.zsh thailand timor-leste
"$RDR"/coronavirus.statistics.zsh togo trinidad-and-tobago
"$RDR"/coronavirus.statistics.zsh tunisia turkey
"$RDR"/coronavirus.statistics.zsh turks-and-caicos-islands uganda
"$RDR"/coronavirus.statistics.zsh uk ukraine
"$RDR"/coronavirus.statistics.zsh united-arab-emirates uruguay
"$RDR"/coronavirus.statistics.zsh us uzbekistan
"$RDR"/coronavirus.statistics.zsh venezuela viet-nam
"$RDR"/coronavirus.statistics.zsh western-sahara yemen
"$RDR"/coronavirus.statistics.zsh zambia zimbabwe
# countries.sh EOF
