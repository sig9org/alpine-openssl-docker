ARG ALPINE=3.0

# https://dl-cdn.alpinelinux.org/alpine/v${REPOSITORY}/main/x86_64/

FROM alpine:${ALPINE}

ARG REPOSITORY=3.0
ARG OPENSSL=1.0.1t-r0

RUN apk --update add --no-cache \
  --repository http://dl-cdn.alpinelinux.org/alpine/v${REPOSITORY}/main \
  openssl=${OPENSSL} \
  && rm -rf /var/cache/apk/*

ENTRYPOINT ["/bin/ash"]
