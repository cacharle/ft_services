FROM alpine

RUN apk update && \
    apk upgrade && \
    apk add --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ pure-ftpd

RUN adduser -D -h /home/charles charles && \
    echo -e 'pass\npass' | passwd charles && \
    echo -e 'pass\npass' | pure-pw useradd charles -u charles -g charles -d /home/charles

EXPOSE 21

# docker run -p 21:21 -p 21000:21000 -p 21001:21001 -p 21002:21002 -p 21003:21003 -p 21004:21004 -t ftps
CMD ["pure-ftpd", "-p", "21000:21004", "-P", "192.168.99.110"]
