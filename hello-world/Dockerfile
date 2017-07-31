FROM golang:1.8 AS build

ENTRYPOINT []
CMD []
WORKDIR /

COPY hello-world.go .

RUN CGO_ENABLED=0 go build -a -installsuffix cgo -o hello-world .

FROM scratch

ENTRYPOINT []
CMD []
WORKDIR /

COPY --from=build /hello-world /