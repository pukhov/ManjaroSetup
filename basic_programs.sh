#!/usr/bin/env bash


set -ex

# Install stuff
sudo pacman -Syu --noconfirm \
    pacaur htop fish powertop time \
    gdb cmake make gcc ninja \
    tor \
    telegram-desktop  vlc \
    python-pip python-scipy python-matplotlib python-pandas \
    python-scikit-learn python-pillow \
    jupyter jupyter-notebook mathjax python-ipywidgets python-tqdm \
    
pacaur -S --noconfirm \
    google-chrome \
    clion-gdb clion-cmake clion \
    pandoc-bin \
    python-numpy-openblas  \
     #  tor-browser \
    
    
# delete
# check
sudo pacman -Rsn --noconfirm \
	steam-manjaro kvantum-manjaro \
	empathy gthumb \
	gnome-contacts brasero timeshift \
	hexchat gnome-todo \




# Sublime
curl -O https://download.sublimetext.com/sublimehq-pub.gpg && \
    sudo pacman-key --add sublimehq-pub.gpg && \
    sudo pacman-key --lsign-key 8A8F901A && \
    rm sublimehq-pub.gpg
echo -e "\n[sublime-text]\nServer = https://download.sublimetext.com/arch/stable/x86_64" | sudo tee -a /etc/pacman.conf

# seems not to work
sudo pacman -S --noconfirm sublime-text
