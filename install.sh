#!/bin/bash

echo "[multilib]\nInclude = /etc/pacman.d/mirrorlist" | sudo tee -a /etc/pacman.conf
sudo pacman -S $(cat pacmanapps.txt)
cd /tmp
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd
yay -S $(cat yayapps.txt)
