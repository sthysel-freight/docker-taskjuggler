.PHONY: all build run

all: build

Dockerfile: Dockerfile.in
	cp $< $@
	sed -i "s/__GID__/$$(id -g)/g" $@
	sed -i "s/__UID__/$$(id -u)/g" $@

build: Dockerfile
	docker build -t sthysel/taskjuggler .

run:
	docker run -it --rm sthysel/taskjuggler -v ${PWD}:/data -w /data

push:
	docker push sthysel/taskjuggler
