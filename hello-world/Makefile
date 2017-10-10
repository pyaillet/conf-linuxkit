.PHONY: clean build run

build:
	$(MAKE) -C devfest-hello-world build
	moby build -disable-content-trust=true hello-world-os.yml

run: build
	linuxkit run hello-world-os

clean:
	rm -Rf hello-world-os-*
	kill -9 $(shell pgrep -f hello-world-os)
