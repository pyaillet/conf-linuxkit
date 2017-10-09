FROM golang:1.9 AS build

WORKDIR /

COPY hello-server.go .

RUN CGO_ENABLED=0 go build -a -installsuffix cgo -o hello-server .

FROM scratch

COPY --from=build /hello-server /hello-server
CMD ["/hello-server"]
