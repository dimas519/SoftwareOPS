#!/usr/bin/env bash

filename="tigabelasPython.service"

touch $filename

echo "
[Unit]
Description=tigabelas
After=multi-user.target
[Service]
Type=simple
Restart=always
ExecStart=/usr/bin/python3 ./debug13.py
[Install]
WantedBy=multi-user.target
" > $filename

sudo mv $filename "/etc/systemd/system/"$filename

sudo systemctl daemon-reload
sudo systemctl status tigabelasPython
sudo systemctl start tigabelasPython
sudo systemctl status tigabelasPython
