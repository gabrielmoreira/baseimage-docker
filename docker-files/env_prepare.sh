#!/bin/sh
set -e

apt-get install -y --no-install-recommends daemontools apt-utils locales

echo "en_US.UTF-8 UTF-8">/etc/locale.gen

mkdir -p /env
echo en_US.UTF-8>/env/LANG
echo en_US.UTF-8>/env/LANGUAGE
echo en_US.UTF-8>/env/LC_ALL

dpkg-reconfigure locales
locale-gen
update-locale

cp /build/start /start