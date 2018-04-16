FROM alpine:latest

LABEL maintainer="kr3ssh@pm.me"

RUN apk add dante-server --no-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted

ADD sockd.conf /etc/sockd.conf

EXPOSE 1080

CMD ["/usr/sbin/sockd"]
