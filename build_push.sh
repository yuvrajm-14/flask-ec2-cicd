#!/bin/bash
docker build -t yuvraj4/flaskapp:v1 .
source .env
docker login -u "$DOCKER_USERNAME" -p "$DOCKER_PASSWORD"
docker push yuvraj4/flaskapp:v1

