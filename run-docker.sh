#!/bin/sh
ROOT=`pwd`

sudo docker run \
  -it \
  --runtime=nvidia -d \
  -p 8888:8888 \
  --mount type=bind,src=${ROOT},target=/home/fastai \
  --workdir /home/fastai \
  fastai bash
