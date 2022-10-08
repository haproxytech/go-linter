FROM golang:1.19-alpine
RUN apk add curl git
ENV CGO_ENABLED=0
ENV GOFLAGS=-buildvcs=false
RUN curl -sSfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s v1.50.0
ENTRYPOINT ["golangci-lint", "run", "--enable-all"]
