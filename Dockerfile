FROM alpine:3.10

RUN apk --no-cache add iproute2 iptables
