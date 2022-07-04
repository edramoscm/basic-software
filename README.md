# This is a simple shell script for myself to install on Arch all software I mostly use. I also use LARBS, so yeah.
# It is also the first script I made from an online shell class I'm taking.
# As mentioned, it's only for Arch


#!/bin/sh

sudo pacman -Syyu

yay -S audacity calcurse calibre dbeaver deluge discord etcher-bin gimp gotktrix inetutils keepassxc mgba-qt nordvpn-bin obs-studio postgresql redshift r rstudio-desktop-bin signal-desktop steam telegram-desktop teams w3m zoom --noconfirm
