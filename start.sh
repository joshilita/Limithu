#!/usr/bin/env bash
echo "Press 'SPACE' to continue."
while true; do
    read input

    if ["$input" = "a"]; then 
        echo "hello world"           
    fi
done
