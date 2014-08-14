#!/bin/sh
set -e

apt-get install -y --no-install-recommends supervisor
mkdir -p /var/log/supervisor