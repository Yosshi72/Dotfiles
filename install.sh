# !/bin/bash

# ApplicationのInstall
if [[ $(open /Applications/Warp.app) ]]; then
		brew install --cask warp
fi
if [[ $(open /Applications/Visual\ Studio\ Code.app) ]]; then
		brew install --cask visual-studio-code
fi
if [[ $(open /Applications/Raycast.app) ]]; then
		brew install --cask raycast
fi
if [[ $(open /Applications/Karabiner-Elements.app) ]]; then
		brew install --cask karabiner-elements
fi
if [[ $(open /Applications/Notion.app) ]]; then
		brew install --cask notion
fi
if [[ $(open /Applications/MonitorControl.app) ]]; then
		brew install --cask monitorcontrol
fi

