#!/usr/bin/env bash

read -p "masukan folder yang dikompress " inputFolder
read -p "masukan lokasi hasil kompress " outputCompress



tar  -czf $outputCompress $inputFolder
