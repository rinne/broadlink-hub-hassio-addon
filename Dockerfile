ARG BUILD_FROM=hassioaddons/base:7.0.2
FROM $BUILD_FROM

ENV LANG C.UTF-8

RUN apk add --no-cache git nodejs npm python3 gcc g++ libc-dev make

COPY run.sh /
RUN chmod 755 /run.sh

RUN git clone --branch hassio --single-branch https://github.com/rinne/node-broadlink-hub.git node-service

RUN ( cd /node-service && npm install )

CMD [ "/run.sh" ]
