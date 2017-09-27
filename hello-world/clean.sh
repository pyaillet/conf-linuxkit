#!/bin/sh

rm -Rf hello-world-os-*
kill -9 $(ps -ef | awk '/hello-world-os/{print $2}')
