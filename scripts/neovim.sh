#!/usr/bin/env bash

PROG=nvim
LOCATION=~/Softwares
BIN_LOCATION=~/.local/bin
VERSION=latest

if ! command -v nvim &>/dev/null; then
	echo "Installing neovim @ latest"
	curl -LO https://github.com/neovim/neovim/releases/$VERSION/download/nvim.appimage
	./nvim.appimage --appimage-extract
	mkdir -p $LOCATION
	mkdir -p $BIN_LOCATION
	mv ./squashfs-root neovim
	mv ./neovim $LOCATION
	mv $LOCATION/neovim/AppRun $PROG
	ln -s $LOCATION/neovim/$PROG $BIN_LOCATION
	rm ./nvim.appimage
fi

echo "Neovim is already insalled !"
