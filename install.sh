#!/usr/bin/env bash

# was using arch
if command -v yay >/dev/null 2>&1; then
	echo "Using yay as a package manager !"

	./scripts/pre.sh
	./scripts/fonts.sh
	./scripts/neovim.sh
	./scripts/programs.sh

else
	if command -v pacman >/dev/null 2>&1; then
		echo "installing yay on arch."
		sudo pacman -S yay
	else
		echo "you are not rocking on arch linux."
	fi
fi
