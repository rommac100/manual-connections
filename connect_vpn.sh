 GNU nano 3.2                                                                        connect_vpn.sh                                                                        Modified

#!/bin/bash
# takens a specified token and starts grabbing stuff.
cd /home/game/.scripts/manual-connections

if [ $1 = "-k" ]; then
        echo Killing VPN
        kill `cat kill_id`
        exit
else
        export PIA_PF=true
        export PIA_AUTOCONNECT=openvpn_udp_standard
        export MAX_LATENCY=.07
        /bin/bash /home/game/.scripts/manual-connections/get_region_and_token.sh
fi
