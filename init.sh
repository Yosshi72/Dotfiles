#!/bin/bash

# for Mac User
CWD=$HOME/Dotfiles
VSCODE=$HOME/Library/Application\ Support/Code/User

#vim
echo 'Create the symbolic link for vim'
ln -sf $CWD/nvim/init.vim $HOME/.vimrc

#neovim
echo 'Create the symbolic link for neovim'
ln -sf $CWD/nvim/init.vim $HOME/.config/nvim/init.vim
ln -sf $CWD/nvim/dein.toml $HOME/.config/dein/dein.toml
ln -sf $CWD/nvim/dein_lazy.toml $HOME/.config/dein/dein_lazy.toml
ln -sf $CWD/nvim/dein_lang.toml $HOME/.config/dein/dein_lang.toml

#zsh
echo 'Create the symbolic link for zsh'
ln -sf $CWD/.zshrc $HOME/.zshrc

#wezterm
echo 'Create the symbolic link for wezterm'
ln -sf $CWD/wezterm.lua $HOME/.config/wezterm/wezterm.lua

#vscode
echo 'Create the symbolic link for vscode settings'
ln -sf $CWD/Vscode/keybindings.json $VSCODE/keybindings.json
ln -sf $CWD/Vscode/settings.json $VSCODE/settings.json

