FROM golang:alpine3.15 as build

WORKDIR /app

COPY ./go.mod ./
COPY ./go.sum ./
RUN go mod download

COPY ./*.go ./

RUN go build -o /application

FROM alpine:3.15 as prod

COPY --from=build /application /application

RUN chown 65534:0 /application

USER 65534

ENTRYPOINT ["/application"]

FROM golang:1.18 as dev

RUN apt update && apt install -y protobuf-compiler

RUN go install google.golang.org/protobuf/cmd/protoc-gen-go@v1.26 && \
    go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@v1.1

RUN curl -sSfL https://raw.githubusercontent.com/cosmtrek/air/master/install.sh | sh -s -- -b $(go env GOPATH)/bin

WORKDIR /app

CMD ["air"]
