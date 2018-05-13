#!/usr/bin/env bash


# chech what is it
# -e  Exit immediately if a command exits with a non-zero status.
# -x  Print commands and their arguments as they are executed.

set -ex


# yandex-disk

pacaur -S --noconfirm yandex-disk
yandex-disk setup
# otherwise it will sync everything
yandex-disk stop 
echo 'exclude-dirs="ParentFolder,PhotoSasha"' >> ~/.config/yandex-disk/config.cfg
yandex-disk start