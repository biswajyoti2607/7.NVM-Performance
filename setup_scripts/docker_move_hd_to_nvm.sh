#!/usr/bin/env bash
#Stop docker, update configuration, copy docker files, start docker
systemctl stop docker
cp /lib/systemd/system/docker.service docker.service.bkp-`date '+%Y-%m-%d-%H-%M-%S'`
mv docker.service.nvm.bkp /lib/systemd/system/docker.service
cp /lib/systemd/system/docker.service docker.service.nvm.bkp
rm -rf /mnt/mem/docker
mkdir -p /mnt/mem/docker
sudo rsync -aqxP /var/lib/docker/ /mnt/mem/docker
systemctl daemon-reload
systemctl start docker
docker info
