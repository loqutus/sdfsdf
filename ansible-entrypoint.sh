#!/usr/bin/env sh
set -x
ANSIBLE_HOST_KEY_CHECKING="False" ansible-playbook -i "$AWS_HOST," --key-file="ssh_key"  deploy-nginx.yml -u centos
