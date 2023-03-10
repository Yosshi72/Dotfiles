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
alias github='open https://github.com/'
alias wide='open https://member.wide.ad.jp/wide-confidential/camp/23spring/TimetablePage'
alias notion='open https://www.notion.so/ICTSC-3aa9ba79fced4f0e84a7215d0d2fa133'
