#!/usr/bin/env bash


# -e  Exit immediately if a command exits with a non-zero status.
# -x  Print commands and their arguments as they are executed.

set -ex


SIZE=$1
# make swap file sized 32G 


sudo fallocate -l $SIZE G /home/swap.swp
sudo chmod 600 /home/swap.swp
sudo mkswap /home/swap.swp
sudo swapon /home/swap.swp
echo '/home/swap.swp none swap defaults 0 0' | sudo tee --append /etc/fstab

# to remove swap file
# sudo swapoff -a
# sudo rm -f /home/swap.swp
