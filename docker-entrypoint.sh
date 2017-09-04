#!/usr/bin/env sh

mkdir -p /var/run/tinyproxy
mkdir -p /var/log/tinyproxy
touch /var/log/tinyproxy/tinyproxy.log
chown -R tinyproxy:tinyproxy /var/log/tinyproxy /var/run/tinyproxy

if [ $UPSTREAM ]
then
  echo "upstream $UPSTREAM" >> /etc/tinyproxy/tinyproxy.conf
fi

tail -f /var/log/tinyproxy/tinyproxy.log &

exec "$@"

