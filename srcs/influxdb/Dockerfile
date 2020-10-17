FROM alpine

RUN apk update && \
    apk upgrade && \
	apk add influxdb

CMD ["influxd", "run"]
