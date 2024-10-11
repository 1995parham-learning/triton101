#!/usr/bin/env bash

# https://stackoverflow.com/questions/3822621/how-to-exit-if-a-command-failed
set -eu
set -o pipefail

xx="24"
yy="09"

docker run --gpus=1 --rm -p8000:8000 -p8001:8001 -p8002:8002 \
  -v ./model_repository:/models \
  "nvcr.io/nvidia/tritonserver:$xx.$yy-py3" \
  tritonserver --model-repository=/models
