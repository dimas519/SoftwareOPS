#!/usr/bin/env bash

echo "running apt- upgrade and logging to logLima.txt"

sudo apt upgrade --yes  > logLima.txt
