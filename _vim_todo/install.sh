#!/bin/sh

# устанавливаем node.js
curl -sL install-node.now.sh/lts | bash

# устанавливаем Anonymice Nerd Font
mkdir -p /usr/share/fonts/truetype/anonymice
wget -P /usr/share/fonts/truetype/anonymice https://raw.githubusercontent.com/ryanoasis/nerd-fonts/master/patched-fonts/AnonymousPro/complete/Anonymice%20Nerd%20Font%20Complete%20Mono%20Windows%20Compatible.ttf
wget -P /usr/share/fonts/truetype/anonymice https://raw.githubusercontent.com/ryanoasis/nerd-fonts/master/patched-fonts/AnonymousPro/complete/Anonymice%20Nerd%20Font%20Complete%20Mono.ttf
wget -P /usr/share/fonts/truetype/anonymice https://raw.githubusercontent.com/ryanoasis/nerd-fonts/master/patched-fonts/AnonymousPro/complete/Anonymice%20Nerd%20Font%20Complete%20Windows%20Compatible.ttf
wget -P /usr/share/fonts/truetype/anonymice https://raw.githubusercontent.com/ryanoasis/nerd-fonts/master/patched-fonts/AnonymousPro/complete/Anonymice%20Nerd%20Font%20Complete.ttf
wget -P /usr/share/fonts/truetype/anonymice https://github.com/ryanoasis/nerd-fonts/releases/latest/download/FiraCode.zip
wget -P /usr/share/fonts/truetype/anonymice https://github.com/ryanoasis/nerd-fonts/releases/latest/download/FiraMono.zip

unzip /usr/share/fonts/truetype/anonymice/FiraCode.zip
rm -f /usr/share/fonts/truetype/anonymice/FiraCode.zip

unzip /usr/share/fonts/truetype/anonymice/FiraMono.zip
rm -f /usr/share/fonts/truetype/anonymice/FiraMono.zip

fc-cache -f -v

# устанавливаем последний .vimrc
cp .vimrc ~/.vimrc
