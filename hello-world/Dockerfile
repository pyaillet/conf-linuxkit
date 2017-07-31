FROM golang:1.8 AS build

WORKDIR /

COPY hello-world.go .

RUN go build -o ./hello-world

RUN ls /

FROM scratch

COPY --from=build /hello-world /