# Triton 101

## Introduction

I am going to try out Triton server to serve LLMs and have our in-house chat system.
I have very poor system with Nvidia 2060 but hope is the only thing I have.

- [Quickstart](https://docs.nvidia.com/deeplearning/triton-inference-server/user-guide/docs/getting_started/quickstart.html)

## Expose GPU to Docker

Use [`dotfiles`](https://github.com/1995parham/dotfiles/) as follows:

```bash
./start.sh nvidia-container
```

## Download Model?

```bash
./fetch-model.sh
```
