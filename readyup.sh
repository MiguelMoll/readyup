#!/bin/bash

if [ -f /etc/os-release ]; then
    . /etc/os-release
    OS=$NAME
    VER=$VERSION
fi

echo "Setting up $PRETTY_NAME"
case $OS in
	Ubuntu|"Pop!_OS")
		sudo apt update && sudo apt upgrade -y && sudo apt install -y ansible git
		;;
	*)
		echo "Should be fedora?"
		#sudo dnf install -y ansible libselinux-python
		;;
esac

git clone https://github.com/MiguelMoll/readyup.git && cd readyup
ansible-playbook -K playbooks/setup.yaml
