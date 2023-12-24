#!/usr/bin/env bash

FONT="JetBrainsMono"

echo "Preparing your favorite ${FONT} FONT ..."

if fc-list | grep -q "${FONT}"; then
	echo "Font already installed."
else
	FONT_URL="https://github.com/ryanoasis/nerd-fonts/releases/download/v2.3.3/${FONT}.zip"
	TEMP_DIR=$(mktemp -d)
	FONT_ARCHIVE="${TEMP_DIR}/${FONT}.zip"

	echo "Downloading ${FONT} font..."
	curl -f -Lo "${FONT_ARCHIVE}" "${FONT_URL}"

	if [ -f "${FONT_ARCHIVE}" ]; then
		echo "Installing ${FONT} font..."
		unzip "${FONT_ARCHIVE}" -d "${TEMP_DIR}"
		mkdir -p ~/.fonts
		mv "${TEMP_DIR}"/*.ttf ~/.fonts
		rm -rf "${TEMP_DIR}"
		echo "Font installation completed."
	else
		echo "Failed to download ${FONT} font."
	fi
fi
