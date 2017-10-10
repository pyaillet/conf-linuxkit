.PHONY: clean build run

build:
	$(MAKE) -C devfest-tomcat build
	moby build -disable-content-trust=true tomcat-os.yml

run: build
	linuxkit run tomcat-os

clean:
	rm -Rf tomcat-os-*
	kill -9 $(shell pgrep -f hello-world-os)
