FROM alpine:3.10

ENV MYSQL_ROOT_PASSWORD root
ENV MYSQL_DATABASE ft_services_db
ENV MYSQL_USER ft_services_user
ENV MYSQL_PASSWORD ft_services_password
ENV MYSQL_USER_MONITORING monitoring
ENV MYSQL_PASSWORD_MONITORING monitoring

RUN apk update && \
	apk add --no-cache mysql-client
COPY ./scripts /root/scripts

EXPOSE 3306

# RUN /root/scripts/setup_mysql.sh

CMD ["mysql"]
