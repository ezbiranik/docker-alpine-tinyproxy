# docker-alpine-tinyproxy
Docker image based on Alpine Linux with tinyproxy

#### Start TinyProxy with default settings:

`docker run -d -i -p 8888:8888 zbi192/docker-alpine-tinyproxy`

#### Start TinyProxy with specified upstream:

`docker run -d -i -p 8888:8888 -e "UPSTREAM=192.168.1.1:3128" zbi192/docker-alpine-tinyproxy`
