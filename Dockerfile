FROM alpine:3.9

MAINTAINER Thomas Maier <contact@thomas-maier.net>

RUN apk update \
	&& apk add postfix --no-cache

COPY init.sh /init.sh

COPY main.cf /etc/postfix/main.cf

CMD ["/init.sh"]
