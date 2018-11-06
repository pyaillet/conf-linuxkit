.PHONY: build push

build:
	linuxkit pkg build -enable-content-trust=false -hash=v0.1 .

push:
	docker push pyaillet/lkt-hello-world:v0.1
