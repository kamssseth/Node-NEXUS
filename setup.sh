#!/bin/bash

# ASCII Art Banner with Colors
echo -e "\033[1;34m  K   K  M   M  SSSS   CCCC   N   N  OOO  DDDD  EEEEE\033[0m"
echo -e "\033[1;32m  K  K   MM MM  S      C      NN  N O   O D   D E    \033[0m"
echo -e "\033[1;33m  KKK    M M M  SSS    C      N N N O   O D   D EEEE \033[0m"
echo -e "\033[1;35m  K  K   M   M     S  C      N  NN O   O D   D E    \033[0m"
echo -e "\033[1;36m  K   K  M   M  SSSS   CCCC  N   N  OOO  DDDD  EEEEE\033[0m"
echo "                                                   "

# Update and upgrade system
sudo apt update && sudo apt upgrade -y

# Install necessary packages
sudo apt install -y curl iptables build-essential git wget lz4 jq make gcc nano automake autoconf tmux htop nvme-cli pkg-config libssl-dev libleveldb-dev tar clang bsdmainutils ncdu unzip protobuf-compiler screen

# Install Rust
sudo curl https://sh.rustup.rs -sSf | sh
source $HOME/.cargo/env
export PATH="$HOME/.cargo/bin:$PATH"

# Update Rust
rustup update

sudo apt install -y protobuf-compiler

# Install Nexus CLI
sudo curl https://cli.nexus.xyz/install.sh | sh

# Instructions for getting prover-id
echo "Instructions:"
echo "1. Open the Nexus beta website and inspect the local storage."
echo "2. Find 'flutter.proverid' to retrieve your prover ID."
echo "3. If there is an error related to the prover ID during runtime, press CTRL+C and follow these steps:"
echo "   a. Navigate to the .nexus directory: cd .nexus/"
echo "   b. Open 'prover-id' with nano: nano prover-id"
echo "   c. Replace the existing prover ID with the one you retrieved and save the changes (CTRL+X, then CTRL+Y, then Enter)."

# Running Nexus CLI again
sudo curl https://cli.nexus.xyz/install.sh | sh

# Instructions for managing screen sessions
echo "To exit the screen session: Press CTRL+A followed by D."
echo "To reattach to the screen session: screen -r nexus."
