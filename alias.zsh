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
if [[ $(command -v rg) ]]; then
    alias grep='rg'
fi
if [[ $(command -v nvim) ]]; then
		alias vi='nvim'
fi

alias github='open https://github.com/'
alias camp='open https://member.wide.ad.jp/wide-confidential/camp/24spring/#timetable'
alias dice='$HOME/Dotfiles/scripts/dice.zsh'

# atcoder cmd
function test() {
	uppercase=$(echo "$1" | tr '[:lower:]' '[:upper:]')
	command cat input.txt | python3 abc$(ls |head -n 1 |cut -c 4-6)"$uppercase".py
}
