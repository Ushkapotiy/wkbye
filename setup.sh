#!/bin/bash
clear
readonly ru=$(dirname $(readlink -f "$0"))
source $ru/disig
apt install mdk4
apt install aircrack-ng
chmod ugo+x $ru/language/ru.sh
chmod ugo+x $ru/language/en.sh
chmod ugo+x $ru/wkbye.sh
chmod ugo+x $ru/source/source
chmod ugo+x $ru/help/helpru.sh
chmod ugo+x $ru/help/helpen.sh
clear
