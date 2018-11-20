#!/bin/bash

if [ -f /etc/os-release ]; then
    . /etc/os-release
    OS=$NAME
    VER=$VERSION
fi

case $OS in
	Ubuntu)
		echo "Setting up Ubuntu $VER"
		sudo apt update && sudo apt install -y ansible
		;;
	*)
		echo "Should be fedora?"
		#sudo dnf install -y ansible libselinux-python
		;;
esac

ansible-playbook -K playbooks/setup.yaml
