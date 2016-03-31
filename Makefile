.PHONY: all build testrun push

all: build

Dockerfile: Dockerfile.in
	cp $< $@
	sed -i "s/__GID__/$$(id -g)/g" $@
	sed -i "s/__UID__/$$(id -u)/g" $@

build: Dockerfile
	docker build -t sthysel/taskjuggler .

testrun:
	docker run -it --rm -v ${PWD}:/data -w /data sthysel/taskjuggler tj3 -o ./testrun template.tjp 

push:
	docker push sthysel/taskjuggler

