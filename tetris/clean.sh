#!/bin/sh

rm -Rf hello-tetris-*
kill -9 $(ps -ef | awk '/hello-tetris/{print $2}')