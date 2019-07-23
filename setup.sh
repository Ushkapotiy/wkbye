#!/bin/bash
clear
readonly st=$(dirname $(readlink -f "$0"))
source $st/desig
apt install mdk4
apt install aircrack-ng
chmod ugo+x $st/language/ru.sh
chmod ugo+x $st/language/en.sh
chmod ugo+x $st/wkbye.sh
chmod ugo+x $st/source/source
chmod ugo+x $st/help/helpru.sh
chmod ugo+x $st/help/helpen.sh
clear
