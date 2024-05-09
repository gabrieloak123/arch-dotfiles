#!/bin/bash

# Define os aliases desejados
a1='alias pokemon="pokemon-colorscripts -r --no-title"'
a2='alias saopaulo "jp2a ~/Desktop/Config/arch-dotfiles/ascii/saopaulo.png --color"'
a3='alias mugiwara "jp2a ~/Desktop/Config/arch-dotfiles/ascii/strawhat.png --color"'
a4='alias kcc "~./Desktop/Config/arch-dotfiles/apps/kcc.AppImage"'

config_file="$HOME/.config/fish/config.fish"
if [ -f "$config_file" ]; then
    echo "" >> "$config_file"
    echo "$a1" >> "$config_file"
    echo "$a2" >> "$config_file"
    echo "$a3" >> "$config_file"
    echo "$a4" >> "$config_file"
fi

