#!/usr/bin/env bash
git fetch
 HEADHASH=$(git rev-parse HEAD)
 UPSTREAMHASH=$(git rev-parse master@{upstream})

 if [ "$HEADHASH" != "$UPSTREAMHASH" ]
 then
   echo "Limuthu needs to update. Press 'SPACE' to update."
   read -n1 -r  upd
   if [ "$upd" = '' ]; then
   git pull && bash start.sh
   else
   exit 0
   fi  
 else
   echo -e ${FINISHED}Current branch is up to date with origin/master.${NOCOLOR}
 fi
echo "Press 'SPACE' to continue."
read -n1 -r  key
if [ "$key" = '' ]; then
echo -e "\e[5mLOADING"
else 
echo -e "\e[31mPress SPACE, not $key!"
fi
