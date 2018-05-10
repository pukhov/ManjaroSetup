#!/usr/bin/env bash


# chech what is it
# -e  Exit immediately if a command exits with a non-zero status.
# -x  Print commands and their arguments as they are executed.

set -ex


# for skype
sudo pacman -S --noconfirm  snapd 	
sudo systemctl enable --now snapd.socket
sudo snap install --classic skype
