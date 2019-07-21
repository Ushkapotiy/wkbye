#!/bin/bash
clear
readonly ru=$(dirname $(readlink -f "$0"))
clear
source $ru/disig
while true; do 
	echo -e  "\e[5m\e[33mselect your language\e[0m"
	echo""
	echo "[1] en / English"
	echo "[2] ru / Русский"
	echo""
	echo -e "\e[31m[9] EXIT\e[0m"
	read -p "language> " lang
	case $lang in
	[1])
	clear
	source $ru/language/en.sh;;
	[2])
	clear
	source $ru/language/ru.sh;;
	[9exit])
	clear
	exit 0;;
	* ) clear
	source /$ru/disig;;
esac
done
