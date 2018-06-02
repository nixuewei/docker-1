#/bin/sh

# install some tools
sudo yum install -y git vim gcc glibc-static telnet bridge-utils net-tools

# install docker
curl -fsSL get.docker.com -o get-docker.sh
sh get-docker.sh

# start docker service
sudo systemctl start docker

sudo groupadd docker

sudo gpasswd -a $USER docker

newgrp docker

sudo service docker restart


rm -rf get-docker.sh
