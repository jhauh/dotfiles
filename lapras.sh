#!/bin/sh
#	/etc/profile.d/motd.sh
#	Print the "Message of the day" 

cat << EOF
                                       ,|
                                       ||
                               ,-"'""\`' \`._
                              '----.     __\`....._       ██╗      █████╗ ██████╗ ██████╗  █████╗ ███████╗
                               \`    \`.  \`. ;      \`.  ██║     ██╔══██╗██╔══██╗██╔══██╗██╔══██╗██╔════╝
                                \`.    \`.  \`   ,"\`. |  ██║     ███████║██████╔╝██████╔╝███████║███████╗
                                  \`.  _.\`._   |  ' |    ██║     ██╔══██║██╔═══╝ ██╔══██╗██╔══██║╚════██║
                                  .','  ,' \`.  \`--'     ███████╗██║  ██║██║     ██║  ██║██║  ██║███████║
                                 /.' _,'    | /           ╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝
                                '/_.'       |.             
                                 \`---\`".    ||          Kernel:            $(uname -r)  
                                       |    ||          Uptime:            $(uptime -p | sed 's/up //g') 
                                      ,'    \`|          Address:           $(ip addr show wlp8s0 | grep "inet " | awk '{print $2}')
                         _           /       |             
                        ' \`.        .'       |          Date:              $(date)
                         .  \`._  _,'/|       |          CPU Tempurature:   $(sensors k10temp-pci-00c3 | grep temp1: | sed 's/temp1: *//g') 
                        _|     "'  / |       '          Power Consumption: $(sensors fam15h_power-pci-00c4 | grep power1 | sed 's/power1: *//g')
                    _,-' |        /  '        .         Load Averages:     $(cat /proc/loadavg | awk '{print $1", "$2", "$3" (1, 5, 15 minutes)"}')
                 |"'            ,'  '          \\        Memory:            $(cat /proc/meminfo | grep MemFree | awk '{print $2}') / $(cat /proc/meminfo | grep MemTotal | awk '{print $2}') KB
                 |   _        ,'   /            \\       Processes:         $(ps -ef | wc -l)
                 ;  '        /    j              .
            ,"--'    \`.    .      |              |         ________
            \`.   -.       / '     |              |   _,-""'   __.._"\`-._
             ,' ,-.\`-.__.' /      '              |.-'  _..--'"       _.-'
             \\.'   \`-.___.'      ,               '__.-"           _.'
             /        _..--    . |              /               ,'
           ,\`      .-'         | |           _,'._          _,-'
       _,-'      ,'           .' '       _.-'     "-.....-"'
     ,'     __ ,'          _.'  /  __..-'
   ,' _.-""'  /         _.'  _.'-"'
  '-'"       /      _.-' _.-"
            /    _.' _.-'
           .   .'_.-'
           | ,'.'
           | .\`
