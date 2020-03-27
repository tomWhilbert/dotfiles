#!/bin/bash
#* Backup dotfiles to github

target=/Users/thomaswhilbert/.dotFiles

cp /Users/thomaswhilbert/Library/Application\ Support/Code/User/settings.json $target
cp /Users/thomaswhilbert/.zshrc $target
cp /Users/thomaswhilbert/.zshrc_aliases $target
cp /Users/thomaswhilbert/Brewfile $target
cp /Users/thomaswhilbert/.p10k.zsh $target

sleep 1

# cd $target || exit
# git add .
# git commit -m  "Dotfiles Backup"
# git push origin macOS
exit


