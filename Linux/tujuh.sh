#!/usr/bin/env bash

read -p "masukan username " username
read -p "masukan ip " ip

ssh-copy-id $username@$ip
