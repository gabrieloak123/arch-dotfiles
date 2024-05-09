#!/bin/bash

mkdir ~/Desktop
mkdir ~/Downloads
mkdir ~/Documents
mkdir ~/Videos
mkdir ~/Pictures
mkdir ~/Desktop/Projects
mkdir ~/Desktop/Config

cd ..
mv arch-dotfiles Desktop/Config
cd Desktop/Config

git clone --depth 1 git@github.com:gabrieloak123/hyprdots.git
./hyprdots/install.sh

#change the timezone
timedatectl set-timezone America/Sao_Paulo

cd arch-dotfiles

#install some apps
yay -S --needed - < yay-apps.lst

sudo su
pacman -S --needed - < pacman-apps.lst
pacman -U apps/mini-video.pacman

chmod +x apps/kcc.AppImage
./apps/kcc.AppImage

chmod +x aliases.sh
./aliases.sh
