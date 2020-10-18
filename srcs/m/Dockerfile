FROM alpine

RUN apk update && \
    apk upgrade && \
	apk add mysql mysql-client --no-cache


COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
COPY my.cnf /etc/mysql/my.cnf

EXPOSE 3306

CMD ["/entrypoint.sh"]
