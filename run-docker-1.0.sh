#!/bin/bash
set -e
ROOT=`pwd`

NAME=fastai

mkdir -p docker_host
HOST_MOUNT=`pwd`/docker_host

docker run \
  --name ${NAME} \
  -it \
  --rm \
  --shm-size 16G \
  --runtime=nvidia \
  -p 8888:8888 \
  --mount type=bind,src=${HOST_MOUNT},target=/notebooks/docker_host \
  --workdir /notebooks \
  fastai:1.0


# docker exec -it ${NAME} bash
