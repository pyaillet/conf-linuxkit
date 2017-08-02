#!/bin/sh

moby build tomcat.yml
sudo linuxkit run --networking=vmnet tomcat 
