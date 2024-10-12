#!/usr/bin/env bash

# https://stackoverflow.com/questions/3822621/how-to-exit-if-a-command-failed
set -eu
set -o pipefail

echo 'triton server using models defined in model_repository'
docker compose up -d --wait

docker run -it --rm --net=host nvcr.io/nvidia/tritonserver:24.09-py3-sdk
