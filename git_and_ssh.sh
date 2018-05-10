#!/usr/bin/env bash


# chech what is it
# -e  Exit immediately if a command exits with a non-zero status.
# -x  Print commands and their arguments as they are executed.

set -ex


# git
ssh-keygen -N "" -f ~/.ssh/id_rsa
# get key
#cat ~/.ssh/id_rsa.pub
git config --global user.email "a.m.pukhov@gmail.com"
git config --global user.name "a_pukhov"

for repo in ManjaroSetup RL_YSDA YSDA 
do
  git clone https://github.com/pukhov/$repo.git
  cd ~/$repo
  git remote set-url origin git@github.com:pukhov/$repo.git
  cd ~
done
