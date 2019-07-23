#!/bin/bash
readonly st=$(dirname $(readlink -f "$0"))

#RUSSIAN VERSION BACK
function ruversbc {
clear
source /$st/desig
airmon-ng stop ${module}mon
NetworkManager
clear
source /$st/desig
source /$st/wkbye.sh
}

#RUSSIAN VERSION HELP
function ruvershp {
clear
source $st/help/helpru.sh
}

#ENGLISH VERSION BACK
function enversbc {
clear
source /$st/desig
airmon-ng stop ${module}mon
NetworkManager
clear
source /$st/desig
source /$st/./wkbye.sh
}

#ENGLISH VERSION HELP
function envershp {
clear
source $st/help/helpen.sh
}
