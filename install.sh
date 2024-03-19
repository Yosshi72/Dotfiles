# !/bin/bash

# ApplicationのInstall
if [[ ! -e $"(/Applications/Warp.app)" ]]; then
		brew install --cask warp
fi
if [[ ! -e $"(/Applications/Visual\ Studio\ Code.app)" ]]; then
		brew install --cask visual-studio-code
fi
if [[ ! -e $"(open /Applications/Raycast.app)" ]]; then
		brew install --cask raycast
fi
if [[ ! -e $"(open /Applications/Karabiner-Elements.app)" ]]; then
		brew install --cask karabiner-elements
fi
if [[ ! -e $"(open /Applications/Notion.app)" ]]; then
		brew install --cask notion
fi
if [[ ! -e $"(open /Applications/MonitorControl.app)" ]]; then
		brew install --cask monitorcontrol
fi

CLI_TOOLS=('nvim' 'bat' 'eza' 'rg' 'procs' 'gh' 'termshark')
for cli in ${CLI_TOOLS[@]}
do
	if [ ! -x "$(command -v $cli)" ]; then
		echo "Install $cli"
		brew install $cli
	fi
done
