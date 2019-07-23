#!/bin/bash
readonly st=$(dirname $(readlink -f "$0"))

#language RUSSIAN
function ru {
source $st/language/ru.sh
}

#language ENGLISH
function en {
source $st/language/en.sh
}

