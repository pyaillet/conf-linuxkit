.PHONY: clean build run

build:
	$(MAKE) -C lkt-hello-world build
	linuxkit build hello-world-os.yml

run: build
	linuxkit run hello-world-os

clean:
	rm -Rf hello-world-os-*
	kill -9 $(shell pgrep -f hello-world-os)
