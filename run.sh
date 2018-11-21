#!/bin/bash

if [ -f /etc/os-release ]; then
    . /etc/os-release
    OS=$NAME
    VER=$VERSION
fi

echo "Setting up $PRETTY_NAME"
case $OS in
	Ubuntu|"Pop!_OS")
		sudo apt update && sudo apt install -y ansible
		;;
	*)
		echo "Should be fedora?"
		#sudo dnf install -y ansible libselinux-python
		;;
esac

ansible-playbook -K playbooks/setup.yaml
