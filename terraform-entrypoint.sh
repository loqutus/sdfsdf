#!/usr/bin/env sh
export TF_VAR_ip=$(curl ifconfig.co/ip)
terraform init
terraform apply