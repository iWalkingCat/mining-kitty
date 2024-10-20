![rounded](https://github.com/user-attachments/assets/eeab079f-0789-417a-9bff-ff9507b3ddf6)
# Why Mining KIT'ty?

Kitty doesn't like the store-bought houses. The kitten built his own house. A house needs heat, right?

For heating, he chose cryptocurrency **mining**. Kitten created a **kit** for the process of setting up and controlling his GPU and CPU.

**Hardware is working properly - the kitty is purring.**

# What is it?

The project was created to automate the installation of packages necessary for convenient operation, deployment of mining software and its configuration files, and adding a service responsible for overclocking the GPU.

Tested on Ubuntu 24.04.1 LTS.
Installation includes packages: vim, tmux.
Installation includes miners: Qubic li, f2pool Aleominer, XMrig.

The video card overclocking service created via RigelMiner and is located in `/etc/systemd/system/overclock.service`. The following values ​​are used by default: core offset 200, core lock 2700, power limit 280, fan 70.

Miners are installed in the directory `/home/root/miners/`

Wallet addresses are stored in the file `person/wallets` in the cloned repository. **The script for pushing new wallets is in development...**

# How to use it?

_All commands must be run as root._

Clone Mining KIT'ty to your machine:
```bash
apt install git -y
git clone https://github.com/iWalkingCat/mining-kitty.git
```

Go to the project directory and run the build script:
```bash
cd mining-kitty
bash build.sh
```
