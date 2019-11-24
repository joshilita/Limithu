#!/usr/bin/env bash
git fetch
 HEADHASH=$(git rev-parse HEAD)
 UPSTREAMHASH=$(git rev-parse master@{upstream})

 if [ "$HEADHASH" != "$UPSTREAMHASH" ]
 then
   echo Error
   echo
   exit 0
 else
   echo -e ${FINISHED}Current branch is up to date with origin/master.${NOCOLOR}
 fi
echo "Press 'SPACE' to continue"
read -n1 -r  key
if [ "$key" = '' ]; then
echo "lll"
else 
echo "eee"
fi
