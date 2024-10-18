# Triton 101

## Introduction

I am going to try out Triton server to serve LLMs and have our in-house chat system.
I have very poor system with Nvidia 2060 but hope is the only thing I have.

- [Quickstart](https://docs.nvidia.com/deeplearning/triton-inference-server/user-guide/docs/getting_started/quickstart.html)

I am reviewing the Triton server using on Docker and Minikube. It can be deployed in two different ways:

- CPU
- GPU

For GPU, we need to have NVIDIA GPU, and I used RTX 2060. First step was exposing GPU to container which was easy
and related packages are easily available to install and work with. The next step was the loading the model.
I used a folder in the Triton server as our model repository, but it supports other types of model repositories too.
Triton supports different kinds of model, I tested it with ONNX and it works well.

For serving LLM model it is not easy, we need to download the model from hugging face and then do changes on it to have it on Triton.

## Expose GPU to Docker

Use [`dotfiles`](https://github.com/1995parham/dotfiles/) as follows:

```bash
./start.sh nvidia-container
```

## Download Model?

With the following script you can download a sample ONNX model.

```bash
./fetch-model.sh
```
