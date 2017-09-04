# AlpineLinux with tinyproxy
FROM alpine:latest

MAINTAINER Eugene Zbiranik <ezbiranik@gmail.com>

ENV LANG en_US.UTF-8

EXPOSE 8888

RUN apk update && apk add --update tinyproxy && rm -rf /var/cache/apk/*

COPY tinyproxy.conf /etc/tinyproxy/

COPY docker-entrypoint.sh /opt/

RUN chmod +x /opt/docker-entrypoint.sh

ENTRYPOINT ["/opt/docker-entrypoint.sh"]

CMD /usr/sbin/tinyproxy -d -c /etc/tinyproxy/tinyproxy.conf

