FROM google/debian:wheezy
MAINTAINER gabrielmoreira@gmail.com

ADD build /build

RUN \
  apt-get update && \
  /build/supervisor_install.sh && \
  /build/rsyslog_install.sh && \
  apt-get clean && \
  apt-get autoclean && \
  apt-get autoremove && \
  rm /var/lib/apt/lists/*_*

CMD supervisord -n -c /etc/supervisor/supervisord.conf