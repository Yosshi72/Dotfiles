if [[ $(command -v xsel) ]]; then
    alias pbcopy='xsel --clipboard --input'
fi

if [[ $(command -v exa) ]]; then
    alias e='exa '
    alias l=e
    alias ls=e
    alias ea='exa -a' 
    alias la=ea
    alias ee='exa -aal '
    alias ll='exa -l'
    alias lla=ee
fi

if [[ $(command -v batcat) ]]; then
    alias cat='batcat'
fi

if [[ $(command -v bat) ]]; then
    alias cat='bat'
fi
if [[ $(command -v procs) ]]; then
    alias ps='procs'
fi
if [[ $(command -v ripgrep) ]]; then
    alias grep='ripgrep'
fi
alias vi='nvim'
