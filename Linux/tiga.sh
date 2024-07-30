#!/usr/bin/env bash

read -p "masukan folder yang ingin dihitung " inputFolder

echo "baris kata char file"
wc -lwm $inputFolder/*
