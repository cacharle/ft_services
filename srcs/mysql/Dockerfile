FROM alpine

RUN apk update && \
    apk upgrade && \
	apk add mysql mysql-client

COPY ./src /root

EXPOSE 3306

CMD ["/root/entrypoint.sh"]
