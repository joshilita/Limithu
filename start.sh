#!/usr/bin/env bash
 ACTION='\033[1;90m'
 FINISHED='\033[1;96m'
 READY='\033[1;92m'
 NOCOLOR='\033[0m' # No Color
 ERROR='\033[0;31m'
git fetch
git stash
 HEADHASH=$(git rev-parse HEAD)
 UPSTREAMHASH=$(git rev-parse master@{upstream})

 if [ "$HEADHASH" != "$UPSTREAMHASH" ]
 then
   echo -e "${ERROR}Limuthu needs to update. Press 'SPACE' to update.${NOCOLOR}"
   read -n1 -r  upd
   if [ "$upd" = '' ]; then
   git pull && bash start.sh
   else
   exit 0
   fi  
 else
   echo -e ${FINISHED}Limithu is up to date.${NOCOLOR}
 fi
echo "Press 'SPACE' to continue."
read -n1 -r  key
if [ "$key" = '' ]; then
echo -e "\e[5mLOADING"
else 
echo ""
echo -e "\e[31mPress SPACE, not $key!"
fi
