#!/usr/bin/env bash

echo "Preparing all dependencies... "

echo "Getting and applying OS update..."
sudo yay -Syu

echo "Installing dunst fd cmake sysstat stow, fish, tmux, xclip meson ninja lazygit zoxide
emacs ..."
yay -S dunst fd cmake sysstat stow fish exa bat xclip meson ninja lazygit zoxide nodejs npm emacs
