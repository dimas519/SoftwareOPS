#!/usr/bin/env bash

read -p "path key akan disimpan " path


mkdir -p $path #buat folder -p untuk  mengatasi inner folder/ sudah ada 


#kalau butuh nama untuk key bisa ditambah read 1 lagi
ssh-keygen -t rsa -f ./key -q -P "" #-q -P untuk mengisi pharase


mv ./key $path/key
mv ./key.pub $path/key.pub


#expected nya
#path= ./testFolder untuk folder setingkat dengan enam.sh ini

