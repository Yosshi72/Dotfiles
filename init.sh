#!/bin/bash

# for Mac User
CWD=$HOME/Dotfiles
VSCODE=$HOME/Library/Application Support/Code/User

#vim
echo 'Create the symbolic link for vim: .vimrc'
ln -sf $CWD/nvim/init.vim $HOME/.vimrc

#neovim
echo 'Create the symbolic link for neovim'
if [ ! -e $HOME/.config ]; then
	mkdir $HOME/.config
	echo "Created directory: $HOME/.config"
fi

if [ ! -e $HOME/.config/nvim ]; then
	mkdir $HOME/.config/nvim
	echo "Created directory: $HOME/.config/nvim"
fi

if [ ! -e $HOME/.config/nvim/init.vim ]; then
	touch $HOME/.config/nvim/init.vim
	echo "Created file: $HOME/.config/nvim/init.vim" 
fi

if [ ! -e $HOME/.config/dein ]; then
	mkdir $HOME/.config/dein
	echo "Created directory: $HOME/.config/dein"
fi

if [ ! -e $HOME/.config/dein/dein.toml ]; then
	touch $HOME/.config/dein/dein.toml
	echo "Created file: $HOME/.config/dein/dein.toml" 
fi

if [ ! -e $HOME/.config/dein/dein_lazy.toml ]; then
	touch $HOME/.config/dein/dein_lazy.toml
	echo "Created file: $HOME/.config/dein/dein.toml" 
fi

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
ln -sf $CWD/Vscode/snippets/ $VSCODE/snippets
