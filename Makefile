DOCKER_IMAGE_NAME=odaceo/builder

build:
	docker build -t $(DOCKER_IMAGE_NAME):ubuntu16 -f ubuntu-16/Dockerfile .
	docker build -t $(DOCKER_IMAGE_NAME):ubuntu18 -f ubuntu-18/Dockerfile .
.PHONY: build

push: build
	docker push $(DOCKER_IMAGE):ubuntu16
	docker push $(DOCKER_IMAGE):ubuntu18
.PHONY: push

default: builddocker 