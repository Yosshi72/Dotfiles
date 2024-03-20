# !/bin/zsh

if [ $# -eq 0 ]; then
	echo $((RANDOM % 6 + 1))
else
	echo $((RANDOM % ($1 + 1)))
fi
