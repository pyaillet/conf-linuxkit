FROM golang:1.8 AS build

WORKDIR /

COPY hello-world.go .

RUN go build -o ./hello-world

FROM scratch

ENTRYPOINT []
CMD []
WORKDIR /

COPY --from=build /hello-world /var/tmp/hello-world