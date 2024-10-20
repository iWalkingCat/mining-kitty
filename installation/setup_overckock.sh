#!/bin/bash

#-------------------------------------------------------------------------
# Script to Install setup overclock via RigelMiner on Linux Ubuntu (24.04)
# Developed by TheWalkingCat in 2024
#-------------------------------------------------------------------------

RIGEL_VERSION="1.19.1"
RIGEL_SOURCE="https://github.com/rigelminer/rigel/releases/download/$RIGEL_VERSION/rigel-$RIGEL_VERSION-linux.tar.gz"


# Download and move RigelMiner to /usr/bin
wget -P /tmp $RIGEL_SOURCE
tar -xvf /tmp/rigel-$RIGEL_VERSION-linux.tar.gz
mv /tmp/rigel-$RIGEL_VERSION-linux/rigel /usr/bin
rm -r /tmp/rigel*

# Create service
cat <<EOF> /etc/systemd/system/overclock.service
[Unit]
Description=Service for overclocking NVIDIA GPU via RigelMiner
After=network.target

[Service]
User=root
Group=root
Type=simple
Restart=on-failure
ExecStart=/usr/bin/rigel -a sha256ton -o stratum+tcp://fi.ton.hasate.to:4002 -u UQCVIMvm-aS4KDYlXQehhvg8ceYSjE6D_gzu5tTXPZ2o8-mq -w 5900x-server --cclock 200 --lock-cclock 2700 --pl 280 --fan-control 70

[Install]
WantedBy=multi-user.target
EOF

systemctl daemon-reload
systemctl start overclock.service
systemctl enable overclock.service
