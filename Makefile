IMAGE_TAG := kenorb/dev-env-windows
.PHONY: build push
build:
	docker build -t $(IMAGE_TAG) .
push:
	docker push $(IMAGE_TAG)
