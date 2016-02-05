#!/bin/bash

ws=$(exec ~/.i3/get_ws.sh)
command="i3-input -F 'rename workspace to \"$(echo $ws): %s\"' -P 'New name for this workspace: $(echo $ws): ' -f 'pango:Noto Sans 14px'"
#command=`i3-input -F 'rename workspace to "%s"' -P 'New name for this workspace: ' -f 'pango: Noto Sans 14px'`

eval $(echo $command)
#echo $ws
