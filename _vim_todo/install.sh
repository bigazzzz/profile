#!/bin/sh

# устанавливаем node.js
curl -sL install-node.now.sh/lts | bash

# устанавливаем Anonymice Nerd Font
mkdir -p /usr/share/fonts/truetype/anonymice
wget -P /usr/share/fonts/truetype/anonymice https://raw.githubusercontent.com/ryanoasis/nerd-fonts/master/patched-fonts/AnonymousPro/complete/Anonymice%20Nerd%20Font%20Complete%20Mono%20Windows%20Compatible.ttf
wget -P /usr/share/fonts/truetype/anonymice https://raw.githubusercontent.com/ryanoasis/nerd-fonts/master/patched-fonts/AnonymousPro/complete/Anonymice%20Nerd%20Font%20Complete%20Mono.ttf
wget -P /usr/share/fonts/truetype/anonymice https://raw.githubusercontent.com/ryanoasis/nerd-fonts/master/patched-fonts/AnonymousPro/complete/Anonymice%20Nerd%20Font%20Complete%20Windows%20Compatible.ttf
wget -P /usr/share/fonts/truetype/anonymice https://raw.githubusercontent.com/ryanoasis/nerd-fonts/master/patched-fonts/AnonymousPro/complete/Anonymice%20Nerd%20Font%20Complete.ttf
fc-cache -f -v

# устанавливаем последний .vimrc
wget -P ~ https://raw.githubusercontent.com/bigazzzz/vim-config/master/.vimrc
