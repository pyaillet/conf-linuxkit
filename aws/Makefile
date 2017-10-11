.PHONY: clean build run

default: run

build:
	$(MAKE) -C nginx build
	moby build -disable-content-trust=true -format raw -size 128M nginx-os.yml

run: build
	linuxkit run nginx-os

clean:
	rm -Rf nginx-os-*
	kill -9 $(shell pgrep -f nginx-os)
