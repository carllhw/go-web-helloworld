FROM golang:1.9.4-alpine3.7 as builder
WORKDIR /go/src/github.com/carllhw/go-web-helloworld
COPY . .
RUN go build .

FROM alpine:3.7
WORKDIR /root/
COPY --from=builder /go/src/github.com/carllhw/go-web-helloworld/go-web-helloworld .
EXPOSE 8000
CMD ["./go-web-helloworld"]
