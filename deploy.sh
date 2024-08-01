#!/bin/bash

DOCKER_REPO="rjrrk/prod"
DOCKER_TAG="latest"

echo "Logging in to Docker Hub..."
docker login

IMAGE="5a6639d26fdb"

echo "Tagging the Docker image..."
docker tag "${IMAGE}" "${DOCKER_REPO}:${DOCKER_TAG}"


echo "Pushing the Docker image to Docker Hub..."
docker push "${DOCKER_REPO}:${DOCKER_TAG}"

echo "Deployment to Docker Hub completed successfully."

docker-compose up -d

