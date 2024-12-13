#!/bin/bash

#--------------------------------------------------------------------
# Script to Build Mining KITty on Linux Ubuntu (24.04)
# Developed by TheWalkingCat in 2024
#--------------------------------------------------------------------

# Installation
bash installation/install_packages.sh
bash installation/setup_overckock.sh
bash installation/install_miners.sh

# Personalization
bash personal/wallet_injection.sh
