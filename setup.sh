#!/usr/bin/env bash


# chech what is it
# -e  Exit immediately if a command exits with a non-zero status.
# -x  Print commands and their arguments as they are executed.

set -ex

chmod +x basic_programs.sh
./basic_programs.sh

chmod +x git_and_ssh.sh
./git_and_ssh.sh


chmod +x skype.sh
./skype.sh


chmod +x yandex_disk.sh
./yandex_disk.sh


chmod +x make_swap.sh 
./make_swap.sh 32


chmod +x python_setup.sh 
./python_setup.sh



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



# C++ programms for Ubuntu
# sudo apt-get install g++ git gdb python3 cmake python3-pip ninja-build
# sudo apt-get install clang-format-4.0
# sudo pip3 install cpplint
