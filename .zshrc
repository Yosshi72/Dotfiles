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
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
  autoload -Uz compinit && compinit
fi
chmod go-w '/usr/local/share'

autoload -Uz colors && colors
PROMPT="%F{green}%n%f %F{cyan}($(arch))%f:%F{blue}%~%f"$'\n'"%# "

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"

# HSTR configuration - add this to ~/.zshrc
alias hh=hstr                    # hh to be alias for hstr
setopt histignorespace           # skip cmds w/ leading space from history
export HSTR_CONFIG=hicolor       # get more colors
bindkey -s "\C-r" "\C-a hstr -- \C-j"     # bind hstr to Ctrl-r (for Vi mode check doc)
export HSTR_TIOCSTI=y

