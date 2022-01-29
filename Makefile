.DEFAULT_GOAL := help

JUPYTERLAB_URL := "http://localhost:8888/lab"
CONTAINER_NAME := "network-science-with-python"

b: ## Docker Compose build
	docker-compose build

u: ## Docker Compose up
	docker-compose up -d
	@echo "Access $(JUPYTERLAB_URL) in your browser..."

bu: ## Docker Compose build & up
	make b
	make u

i: ## Into the Docker container
	docker-compose exec $(CONTAINER_NAME) /bin/bash

d: ## Stop and remove the Docker container
	docker-compose down

help:
	@echo 'Usage: make [target]'
	@echo ''
	@echo 'Targets:'
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)
