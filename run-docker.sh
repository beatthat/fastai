#!/bin/bash
set -e
ROOT=`pwd`

NAME=fastai

sudo docker run \
  --name ${NAME} \
  -it \
  --rm \
  --runtime=nvidia -d \
  -p 8888:8888 \
  --mount type=bind,src=${ROOT},target=/home/fastai \
  --workdir /home/fastai \
  fastai


docker exec -it ${NAME} bash
