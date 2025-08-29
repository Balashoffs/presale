 #!/bin/bash
docker stop presale_v$1_cont
docker rm presale_v$1_cont
docker rmi presale_v$1

docker load -i presale_v$2.tar
docker run -d -p 5566:80 --name presale_v$2_cont presale_v$2
rm presale_v$2.tar