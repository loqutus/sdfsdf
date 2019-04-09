#!/usr/bin/env bash
set -e
if ! [ -x "$(command -v docker)" ]; then
  echo 'Error: docker is not installed.' >&2
  exit 1
fi

docker build -f Dockerfile-ansible . -t alpine-ansible
docker run -e HOST_HOSTNAME=$(hostname -f) -e AWS_HOST=$(cat ip.txt) -v $(pwd):/app alpine-ansible
