# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"
HISTFILE=~/.zsh_history
export HISTSIZE=1000
export SAVEHIST=10000
export PATH=/usr/local/texlive/2023/bin/universal-darwin:$PATH

setopt auto_list
setopt listpacked
setopt list_types
setopt auto_cd
setopt auto_pushd
setopt pushd_ignore_dups
setopt auto_menu


eval "$(gh completion -s zsh)"
alias la="ls -a"
alias ll="ls -l"
alias vim="nvim"
alias vimcf="vim ~/.config/nvim"
alias slack="open /Applications/Slack.app"
alias tl="open https://twitter.com/home\?lang=ja"
source $HOME/Dotfiles/alias.zsh
. "$HOME/.cargo/env"
