#!/bin/bash

NONE='\033[00m'
RED='\033[01;31m'
GREEN='\033[01;32m'
YELLOW='\033[01;33m'
PURPLE='\033[01;35m'
CYAN='\033[01;36m'
WHITE='\033[01;37m'
BOLD='\033[1m'
UNDERLINE='\033[4m'

echo "

"
echo -e "${PURPLE}Multiplication table:${NONE}"
read -p "Give a number to see its multiplication table: " NUMBER

multip () {
MULTI=1
while [ $MULTI -le 10 ]; do
    echo -e "$MULTI     ${CYAN}*${NONE} $NUMBER ${CYAN}=${NONE} " ${GREEN}$(($MULTI * $NUMBER))${NONE}
    MULTI=$(($MULTI+1))
done
}

multip $NUMBER
echo "

"