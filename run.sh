#!/bin/bash

docker build -t kind:latest .

docker run -d --name dind-kind --privileged -p 8080:8080 kind:latest

sleep 10

docker exec dind-kind /start.sh