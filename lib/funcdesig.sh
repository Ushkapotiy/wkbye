#!/bin/bash
readonly st=$(dirname $(readlink -f "$0"))
function desig {
source $st/desig
}
