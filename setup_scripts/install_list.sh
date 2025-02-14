#!/bin/bash

echo adding PPA

#sudo add-apt-repository ppa:linuxuprising/apps -y
#sudo add-apt-repository ppa:danielrichter2007/grub-customizer -y
#sudo add-apt-repository multiverse -y 
#sudo add-apt-repository ppa:diodon-team/stable -y
#sudo add-apt-repository ppa:aslatter/ppa -y

echo adding PPA completed

sudo apt update

sudo apt install -y \
rofi \
git \
curl \
tlpui \
htop \
grub-customizer \
neovim \
meld \
ttf-mscorefonts-installer \
diodon \
vlc \
adb \
tmux \
minicom \
alacritty \
fonts-roboto \
fzf \
universal-ctags \
lazygit \
evince


