#!/bin/bash

if [ "$1" = "first-run" ]; then
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo gpg --dearmor -o /usr/share/keyrings/githubcli-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" |
	sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
sudo apt update
sudo apt install gh -y
fi

if [ "$1" = "update" ]; then

sudo apt update
sudo apt upgrade gh
fi

if [ "$1" = "" ]; then
	echo Please use bash install-gh.sh first-run or install-gh.sh update
fi
