FROM golang:1.8 AS build

WORKDIR /

COPY hello-server.go .

RUN CGO_ENABLED=0 go build -a -installsuffix cgo -o hello-server .

FROM scratch

ENTRYPOINT []
CMD []
WORKDIR /

COPY --from=build /hello-server /hello-server
CMD ["/hello-server"]
LABEL org.mobyproject.config='{"pid": "host", "capabilities": ["all"]}'