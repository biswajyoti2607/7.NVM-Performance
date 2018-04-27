#!/usr/bin/env bash
#Stop docker, update configuration, copy docker files, start docker
systemctl stop docker
cp /lib/systemd/system/docker.service docker.service.bkp-`date '+%Y-%m-%d-%H-%M-%S'`
mv docker.service.hd.bkp /lib/systemd/system/docker.service
cp /lib/systemd/system/docker.service docker.service.hd.bkp
mv /var/lib/docker /var/lib/docker_bkp
mkdir -p /var/lib/docker
sudo rsync -aqxP /mnt/mem/docker /var/lib/docker
systemctl daemon-reload
systemctl start docker
docker info
