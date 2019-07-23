#!/bin/bash
readonly st=$(dirname $(readlink -f "$0"))

#STARTMENU RUSSIAN
function startru {
echo -e  "\e[33mВыберите атаку "
echo ""
echo "[1] Атака A"
echo "[2] Атака B"
echo "[3] Атака C"
echo "[4] Атака D"
echo "[5] Атака E"
echo ""
echo -e "\e[31m[88] Помощь"
echo -e "[99] Назад\e[0m"
}

#STARTMENU ENGLISH
function starten {
echo -e "\e[33mWhat will be the attack? "
echo ""
echo -e  "\e[33m[1] Attack A"
echo  "[2] Attack B"
echo  "[3] Attack C"
echo  "[4] Attack D"
echo  "[5] Attack E"
echo ""
echo -e "\e[31m[88] Help"
echo -e "[99] TURN BACK\e[0m"
}
