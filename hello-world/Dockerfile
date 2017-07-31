FROM golang:1.8 AS build

WORKDIR /

COPY hello-world.go .

RUN go build -o ./hello-world

FROM scratch

COPY --from=build /hello-world /