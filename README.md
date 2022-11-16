# Nginx HTTP Server
Nginx HTTP server boilerplate configs.

[![GitHub license](https://img.shields.io/github/license/Naereen/StrapDown.js.svg)](https://github.com/Naereen/StrapDown.js/blob/master/LICENSE) [![Generic badge](https://img.shields.io/badge/nginx-v1.21-<COLOR>.svg)](https://hub.docker.com/_/nginx) [![Docker](https://badgen.net/badge/icon/docker?icon=docker&label)](https://www.docker.com/) [![Generic badge](https://img.shields.io/badge/docker%20compose-v2.10.2-blue.svg)](https://docs.docker.com/compose/install/)



## Prerequisites

Before you begin, make sure you have the following requirements:
* Docker
* Docker Compose

## Installing Repository

To install Nginx HTTP Server, follow those steps:

1 - Clone the project:
```
$ git clone https://github.com/iagsoncarlos/nginx-http-server.git
```
2 - Build the project:
```
$ build project
```



## Build Nginx HTTP Server

Using a set of directives used by the make build automation tool to generate the application for development and/or production:

1 - Build the images for server deployment
```
$ make build
```

2 - Up server container
```
$ make up
```

3 - Down server container
```
$ make down
```

4 - Remove server container
```
$ make rm
```

5 - Show help by default
```
$ make or $ make help
```
