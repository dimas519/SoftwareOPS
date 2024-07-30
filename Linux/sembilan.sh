#!/usr/bin/env bash

read -p "masukan file publickey (harap tidak menggunakan ~) " inputFile

read -p "masukan username dan domain/ip ex:dimas@dimas519.com " username



(cat $inputFile ; echo "" $username) >> ~/.ssh/authorized_keys




