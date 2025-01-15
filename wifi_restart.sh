#!/bin/sh

ssid=$("iw dev | grep 'Alien Mothership'")

if [[ -z "$$ssid" ]]; then
   echo "Restarting radio0"
   wifi down radio0 && wifi up radio0
fi

* * * * * /etc/wifi_restart.sh >> /tmp/wifi_restart.log 2>&1
