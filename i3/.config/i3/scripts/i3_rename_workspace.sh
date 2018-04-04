#!/bin/bash

ws=$(exec ~/.config/i3/scripts/i3_get_ws.sh)
command="i3-input -F 'rename workspace to \"$(echo $ws): %s\"' -P 'New name for this workspace: $(echo $ws): ' -f 'pango:Noto Sans 24px'"

eval $(echo $command)

