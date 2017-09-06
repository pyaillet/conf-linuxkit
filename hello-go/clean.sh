#!/bin/sh

rm -Rf hello-world-*
kill -9 $(ps -ef | awk '/hello-world/{print $2}')