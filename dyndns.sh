#!/bin/sh
current_wan_ip=$(cat /etc/wan_ip)
wan_ip=$(ip -4 addr show pppoe-wan | grep inet | grep -Eo '([0-9\.]+)' | head -1)

if [[ "$current_wan_ip" != "$wan_ip" ]]; then
echo $wan_ip > /etc/wan_ip

curl --request PATCH \
  --url https://api.cloudflare.com/client/v4/zones/de7ff1a5673dfd3d7f73a4592303bfb7/dns_records/5815f122b729db0f71deb93b  -H 'Content-Type: application/json' \
  -H "Authorization: Bearer wgjnscHHZNTKfM33-DDiq9UIi9rETTKvy3s6R2lx" \
  --data '{"content": "'$wan_ip'"}'

fi

  * * * * * /etc/dyndns.sh >> /tmp/dyndns.log 2>&1
