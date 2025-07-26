#!/bin/bash

echo "Logging into Docker Hub..."
echo "$DOCKER_PASS" | docker login -u "$DOCKER_USER" --password-stdin

docker build -t $DOCKER_USER/flask-ec2-cicd .
docker push $DOCKER_USER/flask-ec2-cicd
