#!/bin/bash
clear
readonly ru1=$(dirname $(readlink -f "$0"))
readonly ru=${ru1//help}
clear
source /$ru/desig
while true; do
echo ""
echo -e  "\e[33m[1] Attack A: Sends authentication frames to all APs found in range. Too many clients can freeze or reset several APs. "
echo ""
echo "[2] Attack B: Sends beacon frames to show fake APs at clients. This can sometimes crash network scanners and even drivers!"
echo ""
echo "[3] Attack C: Reworked WiFi-jammer (Crash all networks around you)"
echo ""
echo "[4] Attack D: Sends deauthentication and disassociation packets to stations based on data traffic to disconnect all clients from an AP. "
echo ""
echo -e "[5] Атака E: Crashes the certain WiFi network\e[0m"
echo ""
echo -e "\e[31m[99] exit\e[0m"
read -p "help > " per
case $per in
	99|exit)
	clear
	source $ru/language/en.sh;;
	*)
	clear
	source $ru/desig;;
esac
done
