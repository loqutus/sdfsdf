#!/usr/bin/env bash
set -e

if [ "$AWS_ACCESS_KEY_ID" = "" ]; then
    echo -n "aws access key: "
    read AWS_ACCESS_KEY_ID
fi
if [ "$AWS_SECRET_ACCESS_KEY" = "" ]; then
    echo -n "aws secret key: "
    read AWS_SECRET_ACCESS_KEY
fi

docker build -f Dockerfile-packer . -t centos7-nginx-aws
docker run -e "AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID" -e "AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY" centos7-nginx-aws