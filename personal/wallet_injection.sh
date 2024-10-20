#!/bin/bash

#--------------------------------------------------------------------
# Script to Wallet Injection into miners on Linux Ubuntu (24.04)
# Developed by TheWalkingCat in 2024
#--------------------------------------------------------------------

. personal/wallets

### Folders ###
MINERS_FOLDER="/home/$(whoami)/miners"
QUBIC_FOLDER="$MINERS_FOLDER/qubic"
QUBIC_CPU_FOLDER="$MINERS_FOLDER/qubic_cpu"
ALEO_FOLDER="$MINERS_FOLDER/aleo"
XMRIG_FOLDER="$MINERS_FOLDER/xmrig"


# Injection into Qubic GPU + Aleo
cat <<EOF> $QUBIC_FOLDER/appsettings.json
{
  "Settings": {
    "baseUrl": "https://wps.qubic.li",
    "alias": "$(hostname)",
    "trainer": {
      "cpu": false,
      "gpu": true,
      "gpuVersion": "CUDA12",
      "cpuVersion": "",
      "cpuThreads": 0
    },
    "isPps": true,
    "useLiveConnection": true,
    "accessToken": "$QUBIC_WALLET",
    "idleSettings":{"gpuOnly":true,"command":"$ALEO_FOLDER/aleominer/aleominer","arguments":"-u stratum+ssl://aleo-asia.f2pool.com:4420 -w myhomemining.$ALEO_WALLET"}
  }
}
EOF

# Injection into Qubic CPU
cat <<EOF> $QUBIC_CPU_FOLDER/appsettings.json
{
  "Settings": {
    "baseUrl": "https://wps.qubic.li",
    "alias": "$(hostname)_cpu",
    "trainer": {
      "cpu": true,
      "gpu": false,
      "gpuVersion": "CUDA12",
      "cpuVersion": "",
      "cpuThreads": 23
    },
    "isPps": true,
    "useLiveConnection": true,
    "accessToken": "$QUBIC_WALLET",
    "idleSettings": null
  }
}
EOF



