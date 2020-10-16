FROM alpine

RUN apk update && \
    apk upgrade && \
	apk add mysql mysql-client --no-cache

COPY ./src /root

EXPOSE 3306

CMD ["/root/entrypoint.sh"]
