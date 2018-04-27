#!/usr/bin/env bash
sudo mkfs.ext4 /dev/pmem0m
sudo mount -o dax /dev/pmem0m /mnt/mem
