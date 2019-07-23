#!/bin/bash
readonly st=$(dirname $(readlink -f "$0"))

#ATTACK 1
function att1 {
clear
source $st/attack/attack1.sh
}

#ATTACK 2
function att2 {
clear
source $st/attack/attack2.sh
}

#ATTACK 3
function att3 {
clear
source $st/attack/attack3.sh
}

#ATTACK 4
function att4 {
clear
source $st/attack/attack4.sh
}

#ATTACK 5
function att5 {
clear
source $st/attack/attack5.sh
}
