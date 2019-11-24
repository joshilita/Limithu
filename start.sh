#!/usr/bin/env bash
if git checkout master &&
    git fetch origin master &&
    [ `git rev-list HEAD...origin/master --count` != 0 ] &&
    git merge origin/master
then
    echo 'Updated!'
else
    echo 'Not updaled.'
fi
echo "Press 'SPACE' to continue"
read -n1 -r  key
if [ "$key" = '' ]; then
echo "lll"
else 
echo "eee"
fi
