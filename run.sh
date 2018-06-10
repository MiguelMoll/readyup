#!/usr/bin/bash

sudo dnf install -y ansible libselinux-python
ansible-playbook -K playbooks/setup.yaml
