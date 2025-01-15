curl --request PATCH \
  --url https://api.cloudflare.com/client/v4/zones/de7ff1a5673dfd3d7f73a4592303bfb7/dns_records/5815f122b729db0f71deb93ba1b1c05a \
  -H 'Content-Type: application/json' \
  -H "Authorization: Bearer wgjnscHHZNTKfM33-DDiq9UIi9rETTKvy3s6R2lx" \
  --data '{"content": "198.51.100.4"}'
