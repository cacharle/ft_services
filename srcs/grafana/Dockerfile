FROM alpine

RUN apk update && \
    apk upgrade && \
    apk add curl libc6-compat && \
    curl https://dl.grafana.com/oss/release/grafana-7.2.1.linux-amd64.tar.gz > grafana.tar.gz && \
    tar xvf grafana.tar.gz && \
    mv grafana-7.2.1 grafana

RUN mkdir /grafana/data && touch /grafana/data/grafana.db

CMD cd /grafana/bin && ./grafana-server
