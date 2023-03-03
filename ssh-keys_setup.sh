#!/bin/sh
mkdir -p $Home/.ssh
curl https://github.com/Yosshi72.keys > $HOME/.ssh/authorized_keys
chmod 600 $HOME/.ssh/authorized_keys
chmod 700 $HOME/.ssh

