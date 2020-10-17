FROM alpine

RUN apk update && \
    apk upgrade && \
	apk add mysql mysql-client --no-cache


COPY src/entrypoint.sh /root/entrypoint.sh
COPY src/my.cnf /etc/my.cnf

EXPOSE 3306

CMD ["/root/entrypoint.sh"]
