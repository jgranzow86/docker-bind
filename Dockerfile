FROM alpine:latest
LABEL email="jason.granzow@gmail.com"

COPY entrypoint.sh /sbin/entrypoint.sh

RUN apk --update --no-cache upgrade \
	&& apk --no-cache add bind bind-tools\
	&& chmod 755 /sbin/entrypoint.sh

EXPOSE 53/tcp 53/udp
ENTRYPOINT ["/sbin/entrypoint.sh"]
