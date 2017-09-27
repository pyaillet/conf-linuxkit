#!/bin/sh

docker build -t devfest-nginx .

moby build -format raw -size 128M nginx-os.yml

linuxkit push aws -bucket devfest-linuxkit -timeout 1200 nginx-os.raw

linuxkit run aws nginx-os
