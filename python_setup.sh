#!/usr/bin/env bash


set -ex



# Python
sudo pip install --upgrade pip
pip install --user \
	 seaborn plotly \
	 joblib \
	 sympy \
	 autopep8 \


# nbextensions 
# https://github.com/ipython-contrib/jupyter_contrib_nbextensions
pip install --user jupyter_contrib_nbextensions 
jupyter contrib nbextension install --user


# pytorch
sudo pacman -Syu --noconfirm \
    python-pytorch-cuda \

# for gym
sudo pacman -S swig
pip install --user gym[all]