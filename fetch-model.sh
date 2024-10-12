#!/usr/bin/env bash

# https://stackoverflow.com/questions/3822621/how-to-exit-if-a-command-failed
set -eu
set -o pipefail

# ONNX densenet
mkdir -p model_repository/densenet_onnx/1

echo "https://github.com/onnx/models/raw/main/validated/vision/classification/densenet-121/model/densenet-7.onnx"
if [ ! -f model_repository/densenet_onnx/1/model.onnx ]; then
  wget -O model_repository/densenet_onnx/1/model.onnx \
    https://github.com/onnx/models/raw/main/validated/vision/classification/densenet-121/model/densenet-7.onnx
fi
