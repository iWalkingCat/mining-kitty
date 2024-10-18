#!/bin/bash

#--------------------------------------------------------------------
# Script to Install miners on Linux Ubuntu (24.04)
# Developed by TheWalkingCat in 2024
#--------------------------------------------------------------------

############### Folders ###############
MINERS_FOLDER="~/miners"
QUBIC_FOLDER="$MINERS_FOLDER/qubic"
QUBIC_CPU_FOLDER="$MINERS_FOLDER/qubic_cpu"
ALEO_FOLDER="$MINERS_FOLDER/aleo"
XMRIG_FOLDER="$MINERS_FOLDER/xmrig"

########### Miners Version ############
QUBICLI_VERSION="2.2.1"
ALEO_VERSION="3.0.10"
XMRIG_VERSION="6.22.0"
#######################################

# Install Qubic li [GPU+CPU]
mkdir -p $QUBIC_FOLDER										# Create folder for Qubic
mkdir -p $QUBIC_CPU_FOLDER									# Create folder for Qubic CPU
wget -P /tmp https://dl.qubic.li/downloads/qli-Client-$QUBICLI_VERSION-Linux-x64.tar.gz		# Download Qubic li
tar -xvf /tmp/qli-Client-$QUBICLI_VERSION-Linux-x64.tar.gz -C $QUBIC_FOLDER			# Unarchiving for GPU
tar -xvf /tmp/qli-Client-$QUBICLI_VERSION-Linux-x64.tar.gz -C $QUBIC_CPU_FOLDER			# Unarchiving for CPU

# Install Aleo F2pool [GPU]
mkdir -p $ALEO_FOLDER													# Create folder for Aleominer
wget -P /tmp https://public-download-ase1.s3.ap-southeast-1.amazonaws.com/aleo-miner/aleominer-$ALEO_VERSION.tar.gz	# Download Aleominer
tar -xvf /tmp/aleominer-$ALEO_VERSION.tar.gz -C $ALEO_FOLDER								# Unarchiving

# Install XMRIG [CPU]
mkdir -p $XMRIG_FOLDER															# Create folder for XMrig
wget -P /tmp https://github.com/xmrig/xmrig/releases/download/v$XMRIG_VERSION/xmrig-$XMRIG_VERSION-linux-static-x64.tar.gz	# Download XMrig
tar -xvf /tmp/xmrig-$XMRIG_VERSION-linux-static-x64.tar.gz -C $XMRIG_FOLDER							# Unarchiving

