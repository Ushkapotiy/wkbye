#!/bin/bash
readonly st=$(dirname $(readlink -f "$0"))

function startmenu {
source $st/source/startmenu.sh
}
