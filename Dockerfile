FROM alpine:3.3
MAINTAINER Drone.IO Community <drone-dev@googlegroups.com>

RUN apk update && \
  apk add \
    ca-certificates && \
  rm -rf /var/cache/apk/*

ADD release/linux/amd64/drone-webhook /bin/
ENTRYPOINT ["/bin/drone-webhook"]
