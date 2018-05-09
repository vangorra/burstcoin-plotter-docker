#!/bin/bash
set -e
SELF_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

IMAGE_NAME="burstcoin-plotter-docker"
CONTAINER_NAME="burstcoin-plotter-docker"

echo "Stopping and removing existing container"
docker ps -a --filter "name=$CONTAINER_NAME" --format "{{.ID}}" | xargs -r docker rm -f

echo "Building image"
docker build --tag "$IMAGE_NAME" .

echo "Starting new container."
docker run \
  --name "$CONTAINER_NAME" \
  --volume "$SELF_DIR/plots:/plots" \
  "$IMAGE_NAME" \
  -k 7354441466404070209 \
  -x 1 \
  -d /plots \
  -s 0 \
  -n 38 \
  -t 2 \
  -v
