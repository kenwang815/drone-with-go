FROM golang:1.14.1-alpine
RUN apk update
RUN apk add --no-cache --virtual .build-deps gcc musl-dev bash
WORKDIR /app
COPY . /app
RUN go build main.go
CMD  ["./main"]
