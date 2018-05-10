#!/usr/bin/env bash


# chech what is it
set -ex


# delete 
# check
sudo pacman -Rsn --noconfirm \
	steam-manjaro kvantum-manjaro \
	empathy gthumb \
	gnome-contacts brasero	timeshift \
	hexchat gnome-todo \

# Install stuff
sudo pacman -Syu --noconfirm \
    pacaur htop fish powertop time \
    gdb cmake make gcc ninja \
    tor \
    telegram-desktop  vlc \
    python-pip \



# for skype, check first 

sudo pacman -Syu --noconfirm  snapd 	
sudo systemctl enable --now snapd.socket
sudo snap install --classic skype


    
pacaur -S --noconfirm \
    google-chrome  \
    tor-browser \
    clion-gdb clion-cmake clion \
    python-numpy-openblas python-scipy python-matplotlib python-pandas \
    python-scikit-learn python-pillow \
    jupyter jupyter-notebook mathjax python-ipywidgets python-tqdm \
    pandoc-bin \
    

# yandex-disk

# pacaur -S --noconfirm yandex-disk
# yandex-disk setup
# # otherwise it will sync everything
# yandex-disk stop 
# echo 'exclude-dirs="ParentFolder,PhotoSasha"' >> ~/.config/yandex-disk/config.cfg
# yandex-disk start


# make swap file sized 32G 

sudo fallocate -l 32G /home/swap.swp
sudo chmod 600 /home/swap.swp
sudo mkswap /home/swap.swp
sudo swapon /home/swap.swp
echo '/home/swap.swp none swap defaults 0 0' | sudo tee --append /etc/fstab


# to remove swap file
# sudo swapoff -a
# sudo rm -f /home/swap.swp

# Sublime
curl -O https://download.sublimetext.com/sublimehq-pub.gpg && \
    sudo pacman-key --add sublimehq-pub.gpg && \
    sudo pacman-key --lsign-key 8A8F901A && \
    rm sublimehq-pub.gpg
echo -e "\n[sublime-text]\nServer = https://download.sublimetext.com/arch/stable/x86_64" | sudo tee -a /etc/pacman.conf

# seems not to work
sudo pacman -Syu --noconfirm sublime-text


# check!
sudo tlp start
systemctl enable tlp
systemctl enable tlp-sleep.service


# why ?!
sudo pacman -Syu --noconfirm bumblebee
systemctl enable bumblebeed.service




# Python
sudo pip install --upgrade pip
pip install --user \
	 seaborn plotly \
	 joblib \
	 sympy \

sudo pacman -Syu --noconfirm \
    python-pytorch-cuda \

# # Fix Jupyter figure size
# (
#     ipython profile create
#     JUPITER_FIGSIZE_FIX="\
# # Subset of matplotlib rcParams that should be different for the inline backend.
# # c.InlineBackend.rc = {'font.size': 10, 'figure.figsize': (16, 9), 'figure.facecolor': 'white', 'savefig.dpi': 72, 'figure.subplot.bottom': 0.125, 'figure.edgecolor': 'white'}
# c.InlineBackend.rc = {'figure.figsize': (16, 9)}
# "
#     IPYTHON_CONFIG="$HOME/.ipython/profile_default/ipython_config.py"
#     echo -e "$JUPITER_FIGSIZE_FIX$(cat $IPYTHON_CONFIG)" > $IPYTHON_CONFIG
# )