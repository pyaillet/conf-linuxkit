FROM linuxkit/alpine:cba395fbc278daee841106801aba1e1bd7e0f2f7 AS mirror

RUN apk add --no-cache --initdb \
    alpine-baselayout \
    apk-tools \
    busybox \
    ca-certificates \
    musl \
    golang \
    tini \
    util-linux \
    wireguard-tools \
    && true

COPY server.go /server.go

RUN CGO_ENABLED=1 go build server.go

FROM scratch
ENTRYPOINT []
WORKDIR /
COPY --from=mirror /server /
COPY /static /
CMD ["/sbin/tini", "/server"]
LABEL org.mobyproject.config='{"pid": "host", "binds": ["/run:/run", "/tmp:/tmp", "/etc:/hostroot/etc", "/usr/bin/ctr:/usr/bin/ctr", "/usr/bin/runc:/usr/bin/runc", "/containers:/containers","/var/log:/var/log","/dev:/dev","/sys:/sys"], "capabilities": ["all"]}'

