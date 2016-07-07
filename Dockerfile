FROM alpine:edge

Maintainer Wanjo Chan ( http://github.com/wanjochan/ )

#RUN echo "http://nl.alpinelinux.org/alpine/latest-stable/main" > /etc/apk/repositories
#RUN echo "http://nl.alpinelinux.org/alpine/edge/testing/" >> /etc/apk/repositories
RUN echo "http://nl.alpinelinux.org/alpine/edge/community/" >> /etc/apk/repositories

RUN apk update
RUN apk add docker
RUN docker --version

