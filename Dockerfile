ARG BUILD_FROM=hassioaddons/base:7.0.2
FROM $BUILD_FROM

ENV LANG C.UTF-8

RUN apk add --no-cache git nodejs npm

COPY run.sh /
RUN chmod 755 /run.sh

RUN git clone --branch hassio --single-branch https://github.com/rinne/node-broadlink-wifi-switch-hub.git node-service

RUN ( cd /node-service && npm install )

CMD [ "/run.sh" ]
