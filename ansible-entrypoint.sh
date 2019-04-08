#!/usr/bin/env sh
set -x
ANSIBLE_HOST_KEY_CHECKING="False" ansible-playbook -i "$(cat output.txt  | tail -n 1 | awk '{print $3}')," --key-file="ssh_key"  deploy.yml -u centos
