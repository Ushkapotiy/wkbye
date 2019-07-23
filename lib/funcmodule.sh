#!/bin/bash
readonly st=$(dirname $(readlink -f "$0"))

#RUSSIAN VERSION
function moduleru {
read -p "WIFI модуль: " module
echo $module > $st/source/per
airmon-ng stop ${module}mon
airmon-ng start $module
clear
}

#ENGLISH VERSION
function moduleen {
read -p "WIFI module: " module
echo $module > $st/source/per
airmon-ng stop ${module}mon
airmon-ng start $module
clear
}

