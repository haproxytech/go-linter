FROM golang:1.18-alpine
RUN apk add curl git
ENV CGO_ENABLED=0
ENV GOFLAGS=-buildvcs=false
RUN curl -sSfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s v1.46.2
ENTRYPOINT ["golangci-lint", "run", "--enable-all"]
