#!/usr/bin/env bash
set -e
set -x

docker build -f Dockerfile-ansible . -t alpine-ansible
docker run -e HOST_HOSTNAME=$(hostname -f) -v $(pwd):/app alpine-ansible
