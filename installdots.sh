#!/bin/bash

echo "Installing dotfiles"
DOTS=$( cd -- "$( dirname -- "${BASH_SOURCE[1]}" )" &> /dev/null && pwd )

echo -e "\nInstalling .config files"

for config in $(ls $DOTS/config); do
    mkdir -pv $HOME/.config/$config
done

for config in $(ls $DOTS/config); do
    # link all files
    for file in $(ls $DOTS/config/$config); do
        ln -sf $DOTS/config/$config/$file $HOME/.config/$config/$file
    done
done

echo -e "\nInstalling home directory dotfiles"

ln -sf $DOTS/homedirdots/.bashrc $HOME/.bashrc
ln -sf $DOTS/homedirdots/.profile $HOME/.profile
cp -r $DOTS/homedirdots/.emacs.d $HOME/

echo -e "\nInstalling themes and app data"

for dir in $(ls $DOTS/themes); do
    mkdir -pv $HOME/.local/share/$dir
done

for dir in $(ls $DOTS/themes); do
    for file in $(ls $DOTS/themes/$dir); do
        ln -sf $DOTS/themes/$dir/$file $HOME/.local/share/$dir/$file
    done
done

                                   
