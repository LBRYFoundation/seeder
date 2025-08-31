FROM alpine:latest

WORKDIR /app

RUN apk add --no-cache g++ make musl-dev boost-dev openssl-dev

COPY . .

RUN make

CMD ["./dnsseed"]