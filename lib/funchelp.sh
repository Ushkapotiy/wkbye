#!/bin/bash
readonly st=$(dirname $(readlink -f "$0"))

#HELP RUSSIAN
function helpru {
source $st/help/helpru.sh
}

#HELP ENGLISH
function helpen {
source $st/help/helpen.sh
}
