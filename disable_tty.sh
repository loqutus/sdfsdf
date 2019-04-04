#!/usr/bin/env bash
sed -i.bak -e '/Defaults.*requiretty/s/^/#/' /etc/sudoers