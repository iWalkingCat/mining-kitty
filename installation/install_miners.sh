#!/bin/bash

#--------------------------------------------------------------------
# Script to Install miners on Linux Ubuntu (24.04)
# Developed by TheWalkingCat in 2024
#--------------------------------------------------------------------

# Folders
MINERS_FOLDER="~/miners"
QUBIC_ALEO_FOLDER="$MINERS_FOLDER/qubic_aleo"

# Miners Version
QUBICLI_VERISON="2.2.1"
ALEO_VERSION="3.0.10"

# Install Qubic li + Aleo F2pool
mkdir -p $QUBIC_ALEO_FOLDER
wget -P /tmp https://dl.qubic.li/downloads/qli-Client-$QUBICLI_VERSION-Linux-x64.tar.gz && wget -P /tmp https://public-download-ase1.s3.ap-southeast-1.amazonaws.com/aleo-miner/aleominer-$ALEO_VERISON.tar.gz
tar -xvf /tmp/qli-Client-$QUBICLI_VERSION-Linux-x64.tar.gz -C $QUBIC_ALEO_FOLDER
tar -xvf /tmp/aleominer-$ALEO_VERISON.tar.gz -C $QUBIC_ALEO_FOLDER
