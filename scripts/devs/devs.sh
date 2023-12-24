#!/usr/bin/env bash

echo " *** welcome to dev profile ***"

if ! command -v docker &>/dev/null; then
	echo "Docker is not installed. Installing Docker..."
	yay -S docker
	echo " --- performing post setup for docker --- "
	sudo groupadd docker
	sudo usermod -aG docker "$USER"
	newgrp docker
	mkdir -p ~/.docker
	sudo chown "$USER":"$USER" /home/"$USER"/.docker -R
	sudo chmod g+rwx "$HOME/.docker" -R
	echo " --- enabling docker service --- "
	sudo systemctl enable docker.service
	sudo systemctl enable containerd.service
fi

if ! command -v docker-compose &>/dev/null; then
	echo "Docker Compose is not installed. Installing Docker Compose..."
	yay -S docker-compose
fi

echo " --- setting up node js global prefix --- "
mkdir -p ~/nodejs_globals
npm config set prefix "$HOME/nodejs_globals"

echo " === installing node packages and dependencies === "
npm i -g typescript yarn pnpm vscode-langservers-extracted typescript-language-server

if ! command -v dbeaver &>/dev/null; then
	echo "dbeaver is not installed. Installing dbeaver..."
	yay -S dbeaver
fi
