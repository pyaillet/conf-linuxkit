.PHONY: clean build run

default: run

build:
	$(MAKE) -C go build
	linuxkit build hello-go-os.yml

run: build
	linuxkit run hello-go-os

clean:
	rm -Rf hello-go-os-*
	kill -9 $(shell pgrep -f hello-go-os)
