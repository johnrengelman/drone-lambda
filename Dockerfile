# Docker image for the Drone AWS Lambda plugin
#
#     cd $GOPATH/src/github.com/drone-plugins/drone-lambda
#     make deps build docker

FROM alpine:3.3

RUN apk update && \
  apk add \
    ca-certificates && \
  rm -rf /var/cache/apk/*

ADD drone-lambda /bin/
ENTRYPOINT ["/bin/drone-lambda"]
