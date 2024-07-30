#!/usr/bin/env bash

read -p "masukan file publickey (harap tidak menggunakan ~) " inputFile

#tidak yakin dibutuhkan karena didalam public key sendiri sudah ada username(?)
#read -p "masukan username dan domain/ip ex:dimas@dimas519.com " username

cat $inputFile >> ~/.ssh/authorized_keys




