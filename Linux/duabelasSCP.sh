#!/usr/bin/env bash

read -p "masukan fileSource " inputFile
read -p "masukan usernameTujuan " username
read -p "masukan ipAddress tujuan " ipAddress


scp  $inputFile $username@$ipAddress:/home/$username



