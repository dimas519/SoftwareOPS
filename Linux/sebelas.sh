#!/usr/bin/env bash

read -p "masukan act (start/stop/status) " act
read -p "masukan service name " name

if [$act="status"]
then 
 sudo service $name status
#atau 
#sudo service --status-all | grep $name
else
 sudo service $name $act

fi
