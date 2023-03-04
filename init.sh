#!/bin/bash


CWD=$HOME/Dotfiles

#vim
echo 'Create the symbolic link for vim'
ln -sf $CWD/nvim/init.vim $HOME/.vimrc

#neovim
echo 'Create the symbolic link for neovim'
ln -sf $CWD/nvim/init.vim $HOME/.config/nvim/init.vim
ln -sf $CWD/nvim/dein.toml $HOME/.config/dein/dein.toml
ln -sf $CWD/nvim/dein_lazy.toml $HOME/.config/dein/dein_lazy.toml

#zsh
echo 'Create the symbolic link for zsh'
ln -sf $CWD/.zshrc $HOME/.zshrc
