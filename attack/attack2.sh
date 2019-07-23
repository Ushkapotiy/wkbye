#!/bin/bash
readonly ru=$(dirname $(readlink -f "$0"))
clear
module=$(cat $ru/source/per)
clear
source /$ru/desig
mdk4 ${module}mon b -ams 500
