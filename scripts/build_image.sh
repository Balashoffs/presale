#!/bin/zsh

export DOCKER_DEFAULT_PLATFORM=linux/amd64
docker build -t presale_v$1 .
docker save -o presale_v$1.tar presale_v$1
scp -i ~/.ssh/217.18.62.204  presale_v$1.tar root@217.18.62.204:/home/presale_v$1.tar
rm presale_v$1.tar