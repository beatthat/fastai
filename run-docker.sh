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
  --runtime=nvidia \
  -p 8888:8888 \
  --mount type=bind,src=${HOST_MOUNT},target=/notebooks/docker_host \
  --workdir /notebooks \
  fastai


# docker exec -it ${NAME} bash
