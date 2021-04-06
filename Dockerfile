FROM golang:1.15-alpine
ADD ./src /usr/local/go/src/app
WORKDIR /usr/local/go/src/app
ENV GO111MODULE=on
RUN go get app

FROM alpine:latest
COPY --from=0 /usr/local/go/bin/app .
ENTRYPOINT ["./app"]
