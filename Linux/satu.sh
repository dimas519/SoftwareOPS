#!/usr/bin/env bash

read -p "masukan path " path
read -p "masukan ekstensi " ekstensi

find $path -name "*.$ekstensi"


#usage example
#./satu.sh
#/home
#deb
