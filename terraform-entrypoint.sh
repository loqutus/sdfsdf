#!/usr/bin/env sh
export TF_VAR_ip=$(curl ifconfig.co/ip)
terraform init
terraform apply -no-color
terraform output centos-nginx.ip > ip.txt
