# Nginx HTTP Server
# https://github.com/iagsoncarlos/nginx-server-configs

# Environment requirements to perform the build
## Default locale: en_US, platform encoding: UTF-8
## OS name: "linux", version: "5.13.0-40-generic", arch: "amd64", family: "unix"

# Setting help command
.DEFAULT_GOAL := help

# Setting all docker-compose files
COMPOSE_SERVER := -f docker/docker-compose.yml


build: 	## Build the images for server deployment
		docker compose ${COMPOSE_SERVER} up -d --build

up:     ## Up server container
		docker compose ${COMPOSE_SERVER} up -d

down:   ## Down server container
		docker compose ${COMPOSE_SERVER} down

rm: 	## Remove server container
		docker compose ${COMPOSE_SERVER} down --volumes

help:  	## User help on commands
		@echo 'Nginx HTTP Server | https://github.com/iagsoncarlos/nginx-http-server.git'
		@awk 'BEGIN {FS = ":.*##"; printf "\nUsage:\n  make \033[36m<target>\033[0m (default: help)\n\nTargets:\n"} /^[a-zA-Z_-]+:.*?##/ { printf "  \033[36m%-12s\033[0m %s\n", $$1, $$2 }' $(MAKEFILE_LIST)