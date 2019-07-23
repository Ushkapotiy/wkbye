#!/bin/bash
readonly ru=$(dirname $(readlink -f "$0"))
module=$(cat $ru/source/per)
clear
source /$ru/desig
python $ru/source/source -i ${module}mon
clear

