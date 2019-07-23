#!/bin/bash
clear
readonly ru=$(dirname $(readlink -f "$0"))
clear
module=$(cat $ru/source/per)
source /$ru/desig
gnome-terminal --geometry=1x1 --command="airodump-ng ${module}mon"
mdk4 ${module}mon a
clear
