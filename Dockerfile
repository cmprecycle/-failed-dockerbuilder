FROM alpine:edge

Maintainer Wanjo Chan ( http://github.com/wanjochan/ )

#RUN echo "http://nl.alpinelinux.org/alpine/latest-stable/main" > /etc/apk/repositories
#RUN echo "http://nl.alpinelinux.org/alpine/edge/testing/" >> /etc/apk/repositories
RUN echo "http://nl.alpinelinux.org/alpine/edge/community/" >> /etc/apk/repositories

RUN echo "nameserver 8.8.8.8" >> /etc/resolv.conf && apk update && apk upgrade

RUN apk add openrc docker
RUN rc-update add docker boot 
RUN echo service docker start
RUN echo docker info

