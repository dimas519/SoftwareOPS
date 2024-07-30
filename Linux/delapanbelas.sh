#!/usr/bin/env bash

echo "run with sudo"

sudo netplan set ethernets.enp1s0f0.addresses=[192.168.101.8/28]
sudo netplan set ethernets.enp1s0f0.nameservers.addresses=[8.8.8.8,8.8.4.4]
sudo netplan set ethernets.enp1s0f0.gateway4=192.168.101.1

sudo netplan apply
