VER=0.6

# Must be LOWERCASE
USER=8ch9azbsfifz
REPO=docker-hello
TAG=ghcr.io/${USER}/${REPO}/hello

build:
	docker build . -t ${TAG}:${VER} -t ${TAG}:latest

run:
	docker run --rm -it ${TAG}:${VER}

push:
	docker push ${TAG}:${VER}

