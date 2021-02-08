#!/bin/bash
# takens a specified token and starts grabbing stuff.

if [ $1 = "-k" ]; then
        echo Killing VPN
        kill `cat kill_id`
        exit
else
	#export PIA_USER=xxxx
	#export PIA_PASS=xxxx
        export PIA_PF=true
        export PIA_AUTOCONNECT=openvpn_udp_standard
        export MAX_LATENCY=.07
         ./get_region.sh
fi
