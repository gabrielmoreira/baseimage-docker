#!/bin/sh
set -e

apt-get install -y --no-install-recommends rsyslog logrotate
cp /build/rsyslog.supervisor.conf /etc/supervisor/conf.d/rsyslog.conf
