#!/usr/bin/env bash
#mount ext4 dax, stop docker, copy docker files, start docker
sudo mkfs.ext4 /dev/pmem0m
sudo mount -o dax /dev/pmem0m /mnt/mem
systemctl stop docker
mkdir -p /mnt/mem/docker
sudo rsync -aqxP /var/lib/docker/ /mnt/mem/docker
systemctl start docker
docker info