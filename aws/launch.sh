#!/bin/sh

docker build -t devfest-nginx .

moby build -format raw -size 128M aws.yml

linuxkit push aws -bucket devfest-linuxkit -timeout 1200 aws.raw

linuxkit run aws aws
