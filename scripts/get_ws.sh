#!/bin/bash

while read -r ws; do
    read -r active
    if [ "$active" = true ]; then 
        echo "$ws"
    fi
done < <(i3-msg -t get_workspaces | jshon -a -e num -u -p -e focused -u)
