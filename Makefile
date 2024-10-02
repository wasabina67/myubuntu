IMAGE_NAME = wasabina67/myubuntu
IMAGE_TAG = latest
CONTAINER_NAME = myubuntu

BUILD = docker build -t $(IMAGE_NAME):$(IMAGE_TAG) .
RUN = docker run -it --name $(CONTAINER_NAME) $(IMAGE_NAME):$(IMAGE_TAG) /bin/bash
PUSH = docker push $(IMAGE_NAME):$(IMAGE_TAG)
PULL = docker pull $(IMAGE_NAME):$(IMAGE_TAG)

build:
	$(BUILD)
run:
	$(RUN)
push:
	$(PUSH)
pull:
	$(PULL)

.PHONY: build run push pull
