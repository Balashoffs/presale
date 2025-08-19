#!/bin/zsh

docker run \
  --name seq \
  -d \
  --restart unless-stopped \
  -e ACCEPT_EULA=Y \
  -e SEQ_FIRSTRUN_ADMINPASSWORD=123 \
  -e SEQ_FIRSTRUN_ADMINUSERNAME=seq \
  -v /Users/bau/Documents/dev/liis/presale/seq:/data \
  -p 5341:80 \
  datalust/seq