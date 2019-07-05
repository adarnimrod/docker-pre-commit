FROM alpine:3.10
RUN apk add --update --no-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing/ docker-compose && \
    wget https://github.com/hadolint/hadolint/releases/download/v1.17.1/hadolint-Linux-x86_64 -O /usr/local/bin/hadolint && \
    chmod +x /usr/local/bin/hadolint
COPY docker-compose-config /usr/local/bin/
