#!/usr/bin/env bash

echo "Installing rust toolchain ..."
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

echo "linking tms script ..."
mkdir -p ~/.local/bin/
ln -s ~/dot.org/scripts/tms.sh ~/.local/bin/tms
