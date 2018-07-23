FROM alpine

RUN apk add --no-cache --update \
    bash \
    curl \
    jq

COPY check /opt/resource/check
COPY in    /opt/resource/in
COPY out   /opt/resource/out

RUN chmod +x /opt/resource/*
