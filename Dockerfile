FROM registry.hub.docker.com/library/alpine:3.13
# hadolint ignore=DL3016,DL3018
RUN apk add --update --no-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing/ \
        docker-compose \
        npm \
    && \
    docker-compose --version && \
    wget https://github.com/projectatomic/dockerfile_lint/archive/v0.3.4.tar.gz -O /tmp/dockerfile_lint.tar.gz && \
    npm install --global /tmp/dockerfile_lint.tar.gz && \
    install -d -o root -g root -m 755 /sample_rules && \
    tar -xzf /tmp/dockerfile_lint.tar.gz -C /tmp/ && \
    cp /tmp/dockerfile_lint*/sample_rules/*.yaml /sample_rules/ && \
    rm -rf /tmp/dockerfile_lint* && \
    dockerfile_lint --help && \
    wget https://github.com/hadolint/hadolint/releases/download/v1.19.0/hadolint-Linux-x86_64 -O /usr/local/bin/hadolint && \
    chmod +x /usr/local/bin/hadolint && \
    hadolint --version
COPY docker-compose-config dockerfile-lint /usr/local/bin/
USER nobody
